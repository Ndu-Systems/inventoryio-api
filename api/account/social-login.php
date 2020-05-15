<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Company.php';
include_once '../../models/Image.php';
include_once '../../models/Roles.php';
include_once '../../models/Permissions.php';


$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->email;
$Name = $data->name;
$Surname = '';
$PhotUrl = $data->photoUrl;
$CellphoneNumber = '';
$Addresss = '';
$Password = $data->id;

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate  objects
$user = new Users($db);
$company = new Company($db);
$role = new Roles($db);
$image = new Image($db);
$permission = new Permissions($db);


$result = $user->getUserByEmail($Email);
if ($result) {
    $userCompany = $company->getById($result["CompanyId"]);
    $dp = $image->getParentIdByIdSigle($result["UserId"]);
    $roleResult = $role->getById($result["RoleId"], $result["CompanyId"]);
    $result["Password"] = null;
    $result["DP"] = $dp;
    $result["Company"] = $userCompany;
    $result["SystemRole"] = $roleResult["Name"];
    echo json_encode($result);
} else {
    // create user
    $CompanyName ='My Company';
    $Description = '';
    $Website = '';
    $TelephoneNumber = '';
    $CreateUserId = 'signup-social';
    $ModifyUserId = 'signup-social';
    $StatusId = 1;

    $companyResult = $company->add(
        $CompanyName,
        $Description,
        $Website,
        $TelephoneNumber,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );

    $roleResult = $role->add(
        $companyResult["CompanyId"],
        'Owner',
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );

    $permissionResult = $permission->add(
        'can_configure',
        $companyResult["CompanyId"],
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );

    $rolePermissionResult = $role->addRolePermission(
        $roleResult["RoleId"],
        $permissionResult["PermissionId"],
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );




    $result = $user->add(
        $Email,
        $Name,
        $Surname,
        $CellphoneNumber,
        $Addresss,
        $Password,
        $companyResult["CompanyId"],
        $roleResult["RoleId"],
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    );

    $dpResult = $image->add(
        $companyResult["CompanyId"],
        $result["UserId"],
        $PhotUrl,
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
