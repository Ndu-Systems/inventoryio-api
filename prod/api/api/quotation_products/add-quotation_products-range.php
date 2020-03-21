<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation_products.php';

$data = json_decode(file_get_contents("php://input"));

$products = $data->products;


//connect to db
$database = new Database();
$db = $database->connect();


foreach ($products as $product) {
    $quotation_products = new Quotation_products($db);

    $result = $quotation_products->add(
        $product->QuotationId,
        $product->ProductId,
        $product->ProductName,
        $product->UnitPrice,
        $product->Quantity,
        $product->subTotal,
        $product->CreateUserId,
        $product->ModifyUserId,
        $product->StatusId
    );
}
    echo json_encode(true);

 
 


