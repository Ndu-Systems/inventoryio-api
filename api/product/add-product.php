<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Image.php';
include_once '../../models/Productoptions.php';
include_once '../../models/Productprocess.php';

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
$ProductAvailability = $data->ProductAvailability;
$PreparingDays = $data->PreparingDays;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$Productoptions = $data->Productoptions;
$Productprocesses = $data->Productprocesses;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$product = new Product($db);
$db_productoptions = new Productoptions($db);
$db_productprocess = new Productprocess($db);

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
    $ProductAvailability,
    $PreparingDays,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

$ProductId = $result['ProductId'];
$result["Productoptions"] = [];
if ($Productoptions) {
    foreach ($Productoptions as $option) {
        $insert_options = $db_productoptions->add(
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
    $result["Productoptions"] = $db_productoptions->getByProductId($ProductId);
}

$result["Productprocesses"]  = [];
if ($Productprocesses) {
    foreach ($Productprocesses as $preccess) {
        $insert_preccess = $db_productprocess->add(
            $ProductId,
            $CompanyId,
            $preccess->ProcessName,
            $preccess->Started,
            $preccess->AssignedUser,
            $preccess->StartDatetime,
            $preccess->FinishDatetime,
            $preccess->NotifyCustomer,
            $preccess->NotifyMessage,
            $preccess->CreateUserId,
            $preccess->ModifyUserId,
            $preccess->StatusId
        );
    }
    $result["Productprocesses"] = $db_productprocess->getByProductId($ProductId);
}
echo json_encode($result);
