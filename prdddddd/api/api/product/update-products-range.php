<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$products = $data->products;


//connect to db
$database = new Database();
$db = $database->connect();

foreach ($products as $product) {
    $prod = new Product($db);

    $result = $prod->update(
        $product->ProductId,
        $product->BrandId,
        $product->CatergoryId,
        $product->CompanyId,
        $product->Name,
        $product->Description,
        $product->UnitPrice,
        $product->UnitCost,
        $product->Code,
        $product->SKU,
        $product->TrackInventory,
        $product->Quantity,
        $product->LowStock,
        $product->CreateUserId,
        $product->ModifyUserId,
        $product->StatusId 
    );
}
    echo json_encode(true);

 
 


