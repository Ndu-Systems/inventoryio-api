<?php
include_once 'Image.php';
include_once 'Config.php';
include_once 'Product.php';
include_once 'Catergory.php';


class Company
{
    //DB Stuff
    private $conn;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $Name,
        $Description,
        $Website,
        $TelephoneNumber,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $CompanyId = getUuid($this->conn);

        $query = "
        INSERT INTO company(
            CompanyId,
            Name,
            Description,
            Website,
            TelephoneNumber,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?
        )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $Name,
                $Description,
                $Website,
                $TelephoneNumber,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($CompanyId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }
    public function updateCompany(
        $CompanyId,
        $Name,
        $Description,
        $Type,
        $Shop,
        $Handler,
        $Website,
        $TelephoneNumber,
        $Prefix,
        $ParentId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE company
        SET  
        Name = ?, 
        Description = ?, 
        Type = ?, 
        Shop = ?, 
        Handler = ?, 
        Website =?, 
        TelephoneNumber =?,       
        Prefix =?,       
        ParentId =?,       
        ModifyDate = NOW(),
        ModifyUserId = ?, 
        StatusId =? 
        WHERE CompanyId =?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Name,
                $Description,
                $Type,
                $Shop,
                $Handler,
                $Website,
                $TelephoneNumber,
                $Prefix,
                $ParentId,
                $ModifyUserId,
                $StatusId,
                $CompanyId
            ))) {
                return $this->getById($CompanyId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }





    public function updateUser(
        $UserId,
        $Email,
        $Name,
        $Surname,
        $CellphoneNumber,
        $Password,
        $CompanyId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        users
    SET
        Email = ?,
        Name = ?,
        Surname = ?,
        CellphoneNumber = ?,
        Password = ?,
        CompanyId = ?,
        ModifyDate = NOW(),
        ModifyUserId = ?,
        StatusId = ?
    WHERE
         UserId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Email,
                $Name,
                $Surname,
                $CellphoneNumber,
                $Password,
                $CompanyId,
                $ModifyUserId,
                $StatusId,
                $UserId

            ))) {
                return $this->getById($UserId); // temp fix
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($CompanyId)
    {
        $query = "SELECT * FROM company WHERE CompanyId =? or Handler = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId, $CompanyId));

        if ($stmt->rowCount()) {
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            $image = new Image($this->conn);
            $config = new Config($this->conn);
            $catergory = new Catergory($this->conn);

            $images = $image->getParentIdById($CompanyId);
            $CompanyId = $result['CompanyId'];

            $imagesbanner = $image->getParentIdById($CompanyId . 'banner');
            $logo = $image->getParentIdById($CompanyId);

            $bankings = $config->getCampanyByIdAndType($CompanyId, 'bank');
            $address = $config->getCampanyByIdAndType($CompanyId, 'address');

            $colors = $config->getCampanyByIdAndType($CompanyId, 'logocolors');
            $theme = $config->getCampanyByIdAndType($CompanyId, 'shop');
            $shipping = $config->getCampanyByIdAndType($CompanyId, 'shipping');
            $catergories = $catergory->getActiveId($CompanyId);

            $result["Images"] = $images;
            $result["Banner"] = $imagesbanner;
            $result["Bankings"] = $bankings;
            $result["Address"] = $address;
            $result["Colors"] = $colors;
            $result["Theme"] = $theme;
            $result["Logo"] = $logo;
            $result["Shipping"] = $shipping;
            $result["Catergories"] = $catergories;
            return $result;
        }
    }



    public function getCompany($CompanyId)
    {
        $query = "SELECT * FROM company WHERE CompanyId =? or Handler = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId, $CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return null;
    }




    public function getAll()
    {
        $query = "SELECT
                c.CompanyId,
                c.Name,
                c.Description,
                c.Type,
                c.Website,
                c.Shop,
                c.Handler,
                c.TelephoneNumber,
                c.CreateDate,
                c.CreateUserId,
                c.ModifyDate,
                c.ModifyUserId,
                c.StatusId
    FROM
        company c
         WHERE c.StatusId = ? and c.Shop = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array(1, 1));

        if ($stmt->rowCount()) {
            $companies = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $detailedShops = array();
            foreach ($companies as $result) {
                $image = new Image($this->conn);
                $config = new Config($this->conn);
                $product = new Product($this->conn);
                $catergory = new Catergory($this->conn);
                $CompanyId = $result['CompanyId'];
                $images = $image->getParentIdById($CompanyId);
                $catergories = $catergory->getActiveId($CompanyId);


                $imagesbanner = $image->getParentIdById($CompanyId . 'banner');
                $logo = $image->getParentIdById($CompanyId);

                $bankings = $config->getCampanyByIdAndType($CompanyId, 'bank');
                $address = $config->getCampanyByIdAndType($CompanyId, 'address');

                $colors = $config->getCampanyByIdAndType($CompanyId, 'logocolors');
                $theme = $config->getCampanyByIdAndType($CompanyId, 'shop');
                $shipping = $config->getCampanyByIdAndType($CompanyId, 'shipping');
                $products = $product->getDetailedProductForShops($CompanyId);

                $result["Images"] = $images;
                $result["Banner"] = $imagesbanner;
                $result["Bankings"] = $bankings;
                $result["Address"] = $address;
                $result["Colors"] = $colors;
                $result["Theme"] = $theme;
                $result["Logo"] = $logo;
                $result["Shipping"] = $shipping;
                $result["Products"] = $products;
                $result["Catergories"] = $catergories;
                if (count($products)) {
                    array_push($detailedShops, $result);
                }
            }
            return $detailedShops;
        }
    }
}
