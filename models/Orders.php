<?php


class Orders
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
        $ParntersId,
        $OrderType,
        $Total,
        $ExpectedDate,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $OrdersId = getUuid($this->conn);

        $query = "
        INSERT INTO orders(
            OrdersId,
            CompanyId,
            ParntersId,
            OrderType,
            Total,
            ExpectedDate,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $OrdersId,
                $CompanyId,
                $ParntersId,
                $OrderType,
                $Total,
                $ExpectedDate,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($OrdersId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateOrders(
        $OrdersId,
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
        orders
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
    OrdersId = ?
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
                $OrdersId


            ))) {
                return $this->getUserById($OrdersId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($OrdersId)
    {
        $query = "SELECT * FROM orders WHERE OrdersId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($OrdersId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT * FROM orders WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
