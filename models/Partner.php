<?php
include_once 'Image.php';


class Partner
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $CompanyId,
        $PartnerType,
        $Name,
        $Surname,
        $CellphoneNumber,
        $EmailAddress,
        $Password,
        $Address,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $PartnerId = getUuid($this->conn);

        $query = "
        INSERT INTO partner(
            PartnerId,
            CompanyId,
            PartnerType,
            Name,
            Surname,
            CellphoneNumber,
            EmailAddress,
            Password,
            Address,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $PartnerId,
                $CompanyId,
                $PartnerType,
                $Name,
                $Surname,
                $CellphoneNumber,
                $EmailAddress,
                $Password,
                $Address,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($PartnerId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
        $PartnerId,
        $CompanyId,
        $PartnerType,
        $Name,
        $Surname,
        $CellphoneNumber,
        $EmailAddress,
        $Password,
        $Address,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        partner
    SET
  
    CompanyId= ? , 
    PartnerType= ? , 
    Name= ? , 
    Surname= ? , 
    CellphoneNumber= ? , 
    EmailAddress= ? , 
    Password= ? , 
    Address= ? , 
    CreateUserId= ? , 
    ModifyDate= now(), 
    ModifyUserId= ? , 
    StatusId = ?
    where   PartnerId= ? 
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $PartnerType,
                $Name,
                $Surname,
                $CellphoneNumber,
                $EmailAddress,
                $Password,
                $Address,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $PartnerId

            ))) {
                return $this->getById($PartnerId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($PartnerId)
    {
        $query = "SELECT * FROM partner WHERE PartnerId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($PartnerId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    public function getByEmailAndCompanyId($EmailAddress, $CompanyId)
    {


        try {
            $query = "SELECT * FROM partner WHERE EmailAddress =? and CompanyId =?";

            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($EmailAddress, $CompanyId));

            if ($stmt->rowCount()) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
            return null;
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT *  FROM
            partner WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));
        $image = new Image($this->conn);
        $parters = array();


        if ($stmt->rowCount()) {
            $items = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($items as $item) {
                $images = $image->getParentIdById($item["PartnerId"]);
                $item["Images"] = $images;
                array_push($parters, $item);
            }
            return $parters;
        } else {
            return array();
        }
    }


    public function getByPartnerId($PartnerId)
    {
        $query = "SELECT * FROM partner WHERE PartnerId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($PartnerId));
        $image = new Image($this->conn);

        if ($stmt->rowCount()) {
            $partner = $stmt->fetch(PDO::FETCH_ASSOC);
            $images = $image->getParentIdById($partner["PartnerId"]);
            $partner["Images"] = $images;
            return $partner;
        }
    }
}
