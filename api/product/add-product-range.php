<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';

$input = json_decode(file_get_contents("php://input"));

// create user data only
$products = $input->products;


//connect to db
$database = new Database();
$db = $database->connect();



foreach ($products as $data) {
    $product = new Product($db);

    $result = $product->add(
        $data->BrandId,
        $data->CatergoryId,
        $data->CompanyId,
        $data->Name,
        $data->Description,
        $data->UnitPrice,
        $data->UnitCost,
        $data->Code,
        $data->SKU,
        $data->Quantity,
        $data->LowStock,
        $data->CreateUserId,
        $data->ModifyUserId,
        $data->StatusId
    );
}
echo json_encode(true);
