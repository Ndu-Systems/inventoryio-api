<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Productoptions.php';


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
$Productoptions = $data->Productoptions;


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);
$db_productoptions = new Productoptions($db);
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


if ($Productoptions) {
    foreach ($Productoptions as $option) {

        if (strlen($option->Id) < 15) {
            $attribute_attribute = $db_productoptions->add(
                $ProductId,
                $option->CompanyId,
                $option->Name1,
                $option->Name2,
                $option->Name3,
                $option->Name4,
                $option->Name5,
                $option->Value1,
                $option->Value2,
                $option->Value3,
                $option->Value4,
                $option->Value5,
                $option->ImageUrl1,
                $option->ImageUrl2,
                $option->ImageUrl3,
                $option->Quantity,
                $option->CreateUserId,
                $option->ModifyUserId,
                $option->StatusId
            );
        } else {


            $attribute_attribute = $db_productoptions->updateproductoptions(
                $option->Id,
                $ProductId,
                $option->CompanyId,
                $option->Name1,
                $option->Name2,
                $option->Name3,
                $option->Name4,
                $option->Name5,
                $option->Value1,
                $option->Value2,
                $option->Value3,
                $option->Value4,
                $option->Value5,
                $option->ImageUrl1,
                $option->ImageUrl2,
                $option->ImageUrl3,
                $option->Quantity,
                $option->CreateUserId,
                $option->ModifyUserId,
                $option->StatusId
            );
        }
    }
    $result["Productoptions"] = $db_productoptions->getByProductId($ProductId);
}
echo json_encode($result);
