<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Attribute.php';


$data = json_decode(file_get_contents("php://input"));

// create user data only
$ProductId = $data->ProductId;
$BrandId = $data->BrandId;
$CatergoryId = $data->CatergoryId;
$CompanyId = $data->CompanyId;
$Name = $data->Name;
$Description = $data->Description;
$UnitPrice = $data->UnitPrice;
$UnitCost = $data->UnitCost;
$Code = $data->Code;
$SKU = $data->SKU;
$TrackInventory = $data->TrackInventory;
$Quantity = $data->Quantity;
$LowStock = $data->LowStock;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$Attributes = $data->Attributes;


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);

$result = $product->update(
    $ProductId,
    $BrandId,
    $CatergoryId,
    $CompanyId,
    $Name,
    $Description,
    $UnitPrice,
    $UnitCost,
    $Code,
    $SKU,
    $TrackInventory,
    $Quantity,
    $LowStock,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);


if ($Attributes) {
    foreach ($Attributes as $atrr) {
        $attribute = new Attribute($db);

        if (strlen($atrr->AttributeId) < 20) {
            $attribute_attribute = $attribute->add(
                $atrr->Name,
                $atrr->AttributeType,
                $atrr->CompanyId,
                $ProductId,
                $atrr->Shop,
                $atrr->CreateUserId,
                $atrr->ModifyUserId,
                $atrr->StatusId
            );
        } else {


            $attribute_attribute = $attribute->updateattribute(
                $atrr->AttributeId,
                $atrr->Name,
                $atrr->AttributeType,
                $atrr->CompanyId,
                $ProductId,
                $atrr->Shop,
                $atrr->CreateUserId,
                $atrr->ModifyUserId,
                $atrr->StatusId
            );
        }

        $items = $atrr->Values;

       $AttributeId =  $attribute_attribute['AttributeId'];


        foreach ($items as $item) {
            $Attribute_item = new Attribute_item($db);
            if (intval($item->Id) == 0) {
                $result_item = $Attribute_item->add(
                    $AttributeId,
                    $item->AttributeValue,
                    $item->AttributePrice,
                    $item->AttributeQuantity,
                    $item->CreateUserId,
                    $item->ModifyUserId,
                    $item->StatusId
                );
            } else {
                $result_item = $Attribute_item->updateattribute_item(
                    $item->Id,
                    $AttributeId,
                    $item->AttributeValue,
                    $item->AttributePrice,
                    $item->AttributeQuantity,
                    $item->CreateUserId,
                    $item->ModifyUserId,
                    $item->StatusId
                );
            }
        }
    }
    $result["Attributes"] = $attribute->getByProductId($ProductId);
}
echo json_encode($result);
