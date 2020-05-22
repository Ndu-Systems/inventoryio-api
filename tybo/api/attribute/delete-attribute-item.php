<?php
include_once '../../config/Database.php';
include_once '../../models/Attribute.php';
include_once '../../models/Attribute_item.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Id =$_GET['Id'];
$AttributeId =$_GET['AttributeId'];


//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$attribute = new Attribute($db);
$attribute_item = new Attribute_item($db);

if (strlen($AttributeId) < 20) {
    $attribute->delete($AttributeId);
}

if (intval($Id) > 0) {
    $attribute_item->delete($Id);
}

echo json_encode(true);