<?php


class Image
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
        $OtherId,
        $Url,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $ImageId = getUuid($this->conn);

        $query = "
        INSERT INTO image(
            ImageId,
            CompanyId,
            OtherId,
            Url,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ImageId,
                $CompanyId,
                $OtherId,
                $Url,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($ImageId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateImage(
        $ImageId,
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
        Image
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
    ImageId = ?
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
                $ImageId


            ))) {
                return $this->getUserById($ImageId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($ImageId)
    {
        $query = "SELECT * FROM Image WHERE ImageId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ImageId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getParentIdById($OtherId)
    {
        $query = "SELECT * FROM image WHERE OtherId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($OtherId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
