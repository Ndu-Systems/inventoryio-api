<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Company.php';
include_once '../../models/Image.php';
include_once '../../models/Stores.php';
include_once '../../models/Roles.php';

$data = json_decode(file_get_contents("php://input"));

$UserId = $_GET['UserId'];

// connect to db
$database = new Database();
$db = $database->connect();

$users = new Users($db);
$company = new Company($db);
$image = new Image($db);
$store = new Stores($db);
$role = new Roles($db);

$result = $users->getUserById($UserId);
$userCompany = $company->getById($result["CompanyId"]);
$dp = $image->getParentIdByIdSigle($result["UserId"]);
$stores = $store->getByUserId($result["UserId"]);
$roles = $role->getRolesByUserId($result["UserId"]);

$result["DP"] = $dp;
$result["Company"] = $userCompany;
$result["Stores"] = $stores;
$result["Roles"] = $roles;

echo json_encode($result);