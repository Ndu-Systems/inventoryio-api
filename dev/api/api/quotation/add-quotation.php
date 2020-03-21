<?php
include_once '../../config/Database.php';
include_once '../../models/Quotation.php';
include_once '../../models/Quotation_products.php';

$data = json_decode(file_get_contents("php://input"));

$products = $data->products;
$quote = $data->quote;


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$quotation = new Quotation($db);

$result = $quotation->add(
    $quote->CompanyId,
    $quote->ParntersId,
    $quote->OrderType,
    $quote->Total,
    $quote->Paid,
    $quote->Due,
    $quote->CreateUserId,
    $quote->ModifyUserId,
    $quote->Status,
    $quote->StatusId
);


$QuotationId = $result['QuotationId'];
foreach ($products as $product) {
    $quotation_products = new Quotation_products($db);

    $result = $quotation_products->add(
        $QuotationId,
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


$allQuotations = $quotation->getDetailedCampanyById($quote->CompanyId);
echo json_encode($allQuotations);
