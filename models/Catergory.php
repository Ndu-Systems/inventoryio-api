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
        ,?,?,?,?,?,?
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
            return $e;
        }
    }




    public function updateCatergory(
        $CatergoryId,
        $Name,
        $Description,
        $UnitPrice,
        $Code,
        $SKU,
        $Quantity,
        $LowStock,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        Catergory
    SET
        Name = ?,
        Description = ?,
        UnitPrice = ?,
        Code = ?,
        SKU = ?,
        Quantity = ?,
        LowStock = ?,
        ModifyDate = NOW(),
        ModifyUserId = ?,
        StatusId = ?
    WHERE
    CatergoryId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Name,
                $Description,
                $UnitPrice,
                $Code,
                $SKU,
                $Quantity,
                $LowStock,
                $ModifyUserId,
                $StatusId,
                $CatergoryId


            ))) {
                return $this->getUserById($CatergoryId);
            }
        } catch (Exception $e) {
            return $e;
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
}
