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

// echo json_encode($result);
// echo json_encode("ndu");
$ProductId = $result['ProductId'];
//echo json_encode($ProductId );
//echo json_encode($Images);
if ($Images) {
   // echo json_encode($Images);
    foreach ($Images as $url) {
      //  echo json_encode($url);
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
echo json_encode($result);
