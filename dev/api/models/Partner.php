<?php


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

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT *  FROM
            partner WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            return Array();
        }
    }
}
