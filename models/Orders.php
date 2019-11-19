<?php
include_once 'Partner.php';


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
        $Status,
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
            Paid,
            Due,
            CreateUserId,
            ModifyUserId,
            Status,
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
                $CompanyId,
                $ParntersId,
                $OrderType,
                $Total,
                $Paid,
                $Due,
                $CreateUserId,
                $ModifyUserId,
                $Status,
                $StatusId
            ))) {
                return $this->getById($OrdersId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
        $OrdersId,
        $CompanyId,
        $ParntersId,
        $OrderType,
        $Total,
        $Paid,
        $Due,
        $CreateUserId,
        $ModifyUserId,
        $Status,
        $StatusId
    ) {
        $query = "UPDATE
        orders
    SET
        CompanyId = ?,
        ParntersId = ?,
        OrderType = ?,
        Total = ?,
        Paid = ?,
        Due = ?,
        CreateUserId = ?,
        ModifyDate = NOW(),
        ModifyUserId = ?,
        Status = ?,
        StatusId  = ?
    WHERE
    OrdersId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $ParntersId,
                $OrderType,
                $Total,
                $Paid,
                $Due,
                $CreateUserId,
                $ModifyUserId,
                $Status,
                $StatusId,
                $OrdersId
            ))) {
                return $this->getById($OrdersId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
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

    public function getDetailedCampanyById($CompanyId)
    {
        $query = "SELECT * FROM orders WHERE CompanyId =? order by CreateDate desc";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));
        $ordersWithCustomers = Array();
        $partner = new Partner($this->conn);

        if ($stmt->rowCount()) {
            $orders =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($orders as $order) {

                $customer = $partner->getById($order["ParntersId"]);
                $order["Customer"] = $customer;
                $order["CardClass"] = ['card'];
                array_push($ordersWithCustomers, $order);


            }
        }
        return $ordersWithCustomers;
    }
}
