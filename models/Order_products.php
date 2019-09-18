<?php


class Order_products
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $OrderId,
        $ProductId,
        $ProductName,
        $UnitPrice,
        $Quantity,
        $subTotal,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $Id = getUuid($this->conn);

        $query = "
        INSERT INTO order_products(
            Id,
            OrderId,
            ProductId,
            ProductName,
            UnitPrice,
            Quantity,
            subTotal,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Id,
                $OrderId,
                $ProductId,
                $ProductName,
                $UnitPrice,
                $Quantity,
                $subTotal,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($Id);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateorder_products(
        $Id,
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
        order_products
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
    Id = ?
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
                $Id


            ))) {
                return $this->getUserById($Id);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($Id)
    {
        $query = "SELECT * FROM order_products WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getBOrderIdId($OrderId)
    {
        $query = "SELECT * FROM order_products WHERE OrderId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($OrderId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
