<?php
include_once '../../config/Database.php';
include_once '../../models/Product.php';
include_once '../../models/Catergory.php';

$input = json_decode(file_get_contents("php://input"));

// create user data only
$products = $input->products;
$catergories = $input->catergories;


//connect to db
$database = new Database();
$db = $database->connect();



foreach ($products as $data) {
    $product = new Product($db);

    $result = $product->add(
        $data->BrandId,
        $data->CatergoryId,
        $data->CompanyId,
        $data->Name,
        $data->Description,
        $data->UnitPrice,
        $data->UnitCost,
        $data->Code,
        $data->SKU,
        $data->TrackInventory,
        $data->Quantity,
        $data->LowStock,
        $data->CreateUserId,
        $data->ModifyUserId,
        $data->StatusId
    );
}


foreach ($catergories as $cat) {
    $catergory = new Catergory($db);
    $checkIfExists = $catergory->getByName($cat->Name);
    if(!isset($checkIfExists)){
        $ProductId = $cat->CatergoryId; // this was a placed holder to link up.
       $newCat = $catergory->add(
            $cat->CompanyId,
            $cat->Name,
            $cat->CreateUserId,
            $cat->ModifyUserId,
            $cat->StatusId
        );

        // now update expolted prodcust with a cat Id.

        $product = new Product($db);
        $productToUpdate = $product->getById($ProductId);
        $productToUpdate["CatergoryId"] = $newCat["CatergoryId"];
        $product->update(
            $productToUpdate["ProductId"],
            $productToUpdate["BrandId"],
            $productToUpdate["CatergoryId"],
            $productToUpdate["CompanyId"],
            $productToUpdate["Name"],
            $productToUpdate["Description"],
            $productToUpdate["UnitPrice"],
            $productToUpdate["UnitCost"],
            $productToUpdate["Code"],
            $productToUpdate["SKU"],
            $productToUpdate["TrackInventory"],
            $productToUpdate["Quantity"],
            $productToUpdate["LowStock"],
            $productToUpdate["CreateUserId"],
            $productToUpdate["ModifyUserId"],
            $productToUpdate["StatusId"]
        );

    }
}
echo json_encode(true);
