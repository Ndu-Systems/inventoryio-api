<?php
include_once '../../config/Database.php';
include_once '../../models/Orders.php';
include_once '../../models/Order_products.php';
include_once '../../models/Partner.php';
include_once '../../models/Order_options.php';


$data = json_decode(file_get_contents("php://input"));

$products = $data->products;
$order = $data->order;
$options = $order->options;

$Customer = $order->Customer;
$EmailAddress = $Customer->EmailAddress;

//connect to db
$database = new Database();
$db = $database->connect();

$partner = new Partner($db);
$findpartner = $partner->getByEmail($EmailAddress);
if($findpartner){
    $order->ParntersId =  $findpartner['PartnerId'];
}else{
    $addpartner =  $partner->add(
        $order->CompanyId,
        $Customer->PartnerType,
        $Customer->Name,
        $Customer->Surname,
        $Customer->CellphoneNumber,
        $Customer->EmailAddress,
        $Customer->Password,
        $Customer->Address,
        $Customer->CreateUserId,
        $Customer->ModifyUserId,
        $Customer->StatusId
    );
    $order->ParntersId =  $addpartner['PartnerId'];
 
}

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


// options
if ($options) {
    foreach ($options as $opt) {
        $attribute = new Order_options($db);

        $attribute_attribute = $attribute->add(
            $OrderId ,
            $opt->OptionId,
            $opt->ValueId,
            $opt->OptionValue,
            $opt->OptionName,
            $opt->ValuePrice,
            $opt->ValueIdQty,
            $opt->CompanyId,
            $opt->CreateUserId,
            $opt->ModifyUserId,
            $opt->StatusId

        );

    }
}



$thisorder = $orders->getDetailedSingleCampanyById($OrderId);
echo json_encode($thisorder);
