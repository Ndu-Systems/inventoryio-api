<?php
include_once '../../config/Database.php';
include_once '../../models/Orders.php';
include_once '../../models/Order_products.php';

$data = json_decode(file_get_contents("php://input"));

$products = $data->products;
$order = $data->order;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$orders = new Orders($db);

$result = $orders->add(
    $order->CompanyId,
    $order->ParntersId,
    $order->OrderType,
    $order->Total,
    $order->Paid,
    $order->Due,
    $order->CreateUserId,
    $order->ModifyUserId,
    $order->Status,
    $order->StatusId
);

$OrderId =  $result['OrdersId'];

foreach ($products as $product) {
    $order_products = new Order_products($db);

    $result = $order_products->add(
        $OrderId,
        $product->ProductId,
        $product->CompanyId,
        $product->ProductName,
        $product->UnitPrice,
        $product->Quantity,
        $product->subTotal,
        $product->CreateUserId,
        $product->ModifyUserId,
        $product->StatusId
    );
}


$allorders = $orders->getDetailedCampanyById($order->CompanyId);
echo json_encode($allorders);
