<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Roles.php';
include_once '../../models/Company.php';
include_once '../../models/Permissions.php';
include_once '../../models/Image.php';

$data = json_decode(file_get_contents("php://input"));
// create user data only
$Email = $data->Email;
$Name = $data->Name;
$Surname = $data->Surname;
$CellphoneNumber = $data->CellphoneNumber;
$Address = $data->Address;
$Password = $data->Password;
$CompanyName = $data->CompanyName;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
$Description = '';
$Website = '';
$TelephoneNumber = '';
$UserType = '';



//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$user = new Users($db);
$company = new Company($db);
$role = new Roles($db);
$permission = new Permissions($db);
$image = new Image($db);

if (isset($CompanyName) && $CompanyName != '') {
    $UserType = 'Business';
    $companyResult = $company->add(
        $CompanyName,
        $Description,
        $Website,
        $TelephoneNumber,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );

    $result = $user->add(
        $Email,
        $Name,
        $UserType,
        $Surname,
        $CellphoneNumber,
        $Address,
        $Password,
        $companyResult["CompanyId"],
        1,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );


    $userCompany = $company->getById($result["CompanyId"]);
    $dp = $image->getParentIdByIdSigle($result["UserId"]);
    $roleResult = $role->getById($result["RoleId"], $result["CompanyId"]);
    $result["Password"] = null;
    $result["DP"] = $dp;
    $result["Company"] = $userCompany;
    $result["SystemRole"] = $roleResult["Name"];

    echo json_encode($result);
}
if (isset($Address) && $Address != '') {
    $UserType = 'Customer';
    $result = $user->add(
        $Email,
        $Name,
        $UserType,
        $Surname,
        $CellphoneNumber,
        $Address,
        $Password,
        '0',
        '0',
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );
    $result["Password"] = null;
    $result["DP"] =  null;
    $result["Company"] = null;
    $result["SystemRole"] = null;

    echo json_encode($result);
}
