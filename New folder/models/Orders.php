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
        $Paid,
        $Due,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $OrdersId = getUuid($this->conn);

        $query = "
        INSERT INTO orders(
            OrdersId,
            OrderId,
            CompanyId,
            ParntersId,
            OrderType,
            Total,
            Paid,
            Due,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $OrdersId,
                $OrderId,
                $CompanyId,
                $ParntersId,
                $OrderType,
                $Total,
                $Paid,
                $Due,
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




    public function update(
        $OrdersId,
        $OrderId,
        $CompanyId,
        $ParntersId,
        $OrderType,
        $Total,
        $Paid,
        $Due,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        orders
    SET
        OrderId = ?,
        CompanyId = ?,
        ParntersId = ?,
        OrderType = ?,
        Total = ?,
        Paid = ?,
        Due = ?,
        CreateUserId = ?,
        ModifyDate = NOW(),
        ModifyUserId = ?,
        StatusId  = ?
    WHERE
    OrdersId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $OrderId,
                $CompanyId,
                $ParntersId,
                $OrderType,
                $Total,
                $Paid,
                $Due,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $OrdersId
            ))) {
                return $this->getById($OrdersId);
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
        $query = "SELECT * FROM orders WHERE CompanyId =? order by CreateDate desc";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
