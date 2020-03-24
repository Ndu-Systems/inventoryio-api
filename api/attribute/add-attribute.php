<?php
include_once '../../config/Database.php';
include_once '../../models/Attribute.php';
include_once '../../models/Attribute_item.php';

$data = json_decode(file_get_contents("php://input"));

$atrr = $data->attribute;
$items = $data->items;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$attribute = new Attribute($db);

$result = $attribute->add(
    $atrr->Name,
    $atrr->AttributeType,
    $atrr->CompanyId,
    $atrr->ProductId,
    $atrr->Shop,
    $atrr->CreateUserId,
    $atrr->ModifyUserId,
    $atrr->StatusId
);

$AttributeId =  $result['AttributeId'];

foreach ($items as $item) {
    $Attribute_item = new Attribute_item($db);
    $result = $Attribute_item->add(
        $AttributeId,'','','',
        $item->AttributeValue,
        $item->CreateUserId,
        $item->ModifyUserId,
        $item->StatusId
    );
}


$fullAtribute = $attribute->getByProductId($atrr->ProductId);
echo json_encode($fullAtribute);
