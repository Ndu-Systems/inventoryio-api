<?php


class Productoptions
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function add(
        $ProductId,
        $CompanyId,
        $Name1,
        $Name2,
        $Name3,
        $Name4,
        $Name5,
        $Value1,
        $Value2,
        $Value3,
        $Value4,
        $Value5,
        $ImageUrl1,
        $ImageUrl2,
        $ImageUrl3,
        $Quantity,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $Id = getUuid($this->conn);

        $query = "
        INSERT INTO productoptions(
            Id,
            ProductId,
            CompanyId,
            Name1,
            Name2,
            Name3,
            Name4,
            Name5,
            Value1,
            Value2,
            Value3,
            Value4,
            Value5,
            ImageUrl1,
            ImageUrl2,
            ImageUrl3,
            Quantity,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?, ?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Id,
                $ProductId,
                $CompanyId,
                $Name1,
                $Name2,
                $Name3,
                $Name4,
                $Name5,
                $Value1,
                $Value2,
                $Value3,
                $Value4,
                $Value5,
                $ImageUrl1,
                $ImageUrl2,
                $ImageUrl3,
                $Quantity,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($Id);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function updateproductoptions(
        $Id,
        $ProductId,
        $CompanyId,
        $Name1,
        $Name2,
        $Name3,
        $Name4,
        $Name5,
        $Value1,
        $Value2,
        $Value3,
        $Value4,
        $Value5,
        $ImageUrl1,
        $ImageUrl2,
        $ImageUrl3,
        $Quantity,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        productoptions
    SET
        CompanyId = ?,
        OtherId = ?,
        Url = ?,
        CreateUserId = ?,
        ModifyUserId = ?,
        StatusId = ?,
        ModifyDate = NOW()
    WHERE
    productoptionsId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ProductId,
                $CompanyId,
                $Name1,
                $Name2,
                $Name3,
                $Name4,
                $Name5,
                $Value1,
                $Value2,
                $Value3,
                $Value4,
                $Value5,
                $ImageUrl1,
                $ImageUrl2,
                $ImageUrl3,
                $Quantity,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $Id


            ))) {
                return $this->getById($Id);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($Id)
    {
        $query = "SELECT * FROM productoptions WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByProductId($ProductId)
    {
        $query = "SELECT * FROM productoptions WHERE ProductId =? AND StatusId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId, 1));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
    public function getParentIdByIdSigle($OtherId)
    {
        $query = "SELECT * FROM productoptions WHERE OtherId =? AND StatusId = ? order by CreateDate desc";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($OtherId, 1));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
