<?php
include_once '../../config/Database.php';
include_once '../../models/Config.php';

$data = json_decode(file_get_contents("php://input"));

$configs = $data->configs;

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId



foreach ($configs as $item) {
    $config = new Config($db);

    $result = $config->update(
        $item->ConfigId,
        $item->CompanyId,
        $item->Name,
        $item->Type,
        $item->Label,
        $item->Value,
        $item->IsRequired,
        $item->FieldType,
        $item->CreateUserId,
        $item->ModifyUserId,
        $item->StatusId
    );
}
echo json_encode(true);

