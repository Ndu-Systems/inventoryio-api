<?php


class Catergory
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
        $Name,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $CatergoryId = getUuid($this->conn);

        $query = "
        INSERT INTO catergory(
            CatergoryId,
            CompanyId,
            Name,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CatergoryId,
                $CompanyId,
                $Name,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($CatergoryId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function updateCatergory(
        $CatergoryId,
        $CompanyId,
        $Name,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        Catergory
    SET
        CompanyId = ?,
        Name = ?,        
        ModifyDate = NOW(),
        CreateUserId = ?,
        ModifyUserId = ?,
        StatusId = ?
    WHERE
    CatergoryId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $Name,               
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $CatergoryId
            ))) {
                return $this->getById($CatergoryId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($CatergoryId)
    {
        $query = "SELECT * FROM catergory WHERE CatergoryId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CatergoryId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT * FROM catergory WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }

    public function getByName($Name)
    {
        $query = "SELECT * FROM catergory WHERE Name =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Name));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return null;
    }
}
