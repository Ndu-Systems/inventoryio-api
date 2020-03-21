<?php

include_once '../../config/Database.php';
include_once '../../models/Stores.php';

$data = json_decode(file_get_contents("php://input"));

$CompanyId =$_GET['CompanyId'];
$StatusId =$_GET['StatusId'];

$database = new Database();
$db = $database->connect();

$stores = new Stores($db);

$result = $stores->getByCompanyId(
    $CompanyId,
    $StatusId
);

echo json_encode($result);
