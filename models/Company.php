<?php
include_once 'Image.php';
include_once 'Config.php';


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
            $images = $image->getParentIdById($CompanyId);
            $CompanyId = $result['CompanyId'];

            $imagesbanner = $image->getParentIdById($CompanyId.'banner');
            $logo = $image->getParentIdById($CompanyId);

            $bankings = $config->getCampanyByIdAndType($CompanyId, 'bank');
            $address = $config->getCampanyByIdAndType($CompanyId, 'address');

            $colors = $config->getCampanyByIdAndType($CompanyId, 'logocolors');
            $theme = $config->getCampanyByIdAndType($CompanyId, 'shop');
            $shipping = $config->getCampanyByIdAndType($CompanyId, 'shipping');

            $result["Images"] = $images;
            $result["Banner"] = $imagesbanner;
            $result["Bankings"] = $bankings;
            $result["Address"] = $address;
            $result["Colors"] = $colors;
            $result["Theme"] = $theme;
            $result["Logo"] = $logo;
            $result["Shipping"] = $shipping;
            return $result;
        }
    }

    public function getAll()
    {
        $query = "SELECT * FROM company WHERE StatusId = ? and Shop = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array(1,1));

        if ($stmt->rowCount()) {
            $companies = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $detailedShops = Array();
            foreach ($companies as $result) {
            $image = new Image($this->conn);
            $config = new Config($this->conn);
            $CompanyId = $result['CompanyId'];
            $images = $image->getParentIdById($CompanyId);


            $imagesbanner = $image->getParentIdById($CompanyId.'banner');
            $logo = $image->getParentIdById($CompanyId);

            $bankings = $config->getCampanyByIdAndType($CompanyId, 'bank');
            $address = $config->getCampanyByIdAndType($CompanyId, 'address');

            $colors = $config->getCampanyByIdAndType($CompanyId, 'logocolors');
            $theme = $config->getCampanyByIdAndType($CompanyId, 'shop');
            $shipping = $config->getCampanyByIdAndType($CompanyId, 'shipping');

            $result["Images"] = $images;
            $result["Banner"] = $imagesbanner;
            $result["Bankings"] = $bankings;
            $result["Address"] = $address;
            $result["Colors"] = $colors;
            $result["Theme"] = $theme;
            $result["Logo"] = $logo;
            $result["Shipping"] = $shipping;
            array_push($detailedShops, $result);
            }
            return $detailedShops;
        }
    }
}
