<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Image.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
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
$Images = $data->Images;
$Attributes = $data->attributes;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);

$result = $product->add(
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

$ProductId = $result['ProductId'];
if ($Images) {
    foreach ($Images as $url) {
        $image = new Image($db);

        $addImages = $image->add(
            $CompanyId,
            $ProductId,
            $url,
            $CreateUserId,
            $ModifyUserId,
            $StatusId
        );
    }
    $result["Images"] = $image->getParentIdById($ProductId);
}

if ($Attributes) {
    foreach ($Attributes as $atrr) {
        $attribute = new Attribute($db);

        $result = $attribute->add(
            $atrr->Name,
            $atrr->AttributeType,
            $atrr->CompanyId,
            $ProductId,
            $atrr->Shop,
            $atrr->CreateUserId,
            $atrr->ModifyUserId,
            $atrr->StatusId
        );

        $AttributeId =  $result['AttributeId'];

        foreach ($items as $item) {
            $Attribute_item = new Attribute_item($db);
            $result = $Attribute_item->add(
                $AttributeId,
                $item->AttributeValue,
                $item->CreateUserId,
                $item->ModifyUserId,
                $item->StatusId
            );
        }
    }
    $result["Attributes"] = $attribute->getByProductId($ProductId);
}
echo json_encode($result);
