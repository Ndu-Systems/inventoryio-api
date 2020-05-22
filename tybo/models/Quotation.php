<?php
include_once 'Partner.php';
include_once 'Order_products.php';
include_once 'Quotation_products.php';
include_once 'Company.php';


class Quotation
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

        $QuotationId = getUuid($this->conn);
        $Total = number_format((float) $Total, 2, '.', '');
        $Paid = number_format((float) $Paid, 2, '.', '');
        $Due = number_format((float) $Due, 2, '.', '');

        $query = "
        INSERT INTO quotation(
            QuotationId,
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
                $QuotationId,
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
                return $this->getById($QuotationId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
        $QuotationId,
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
        $Total = number_format((float) $Total, 2, '.', '');
        $Paid = number_format((float) $Paid, 2, '.', '');
        $Due = number_format((float) $Due, 2, '.', '');
        $query = "UPDATE
        quotation
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
    QuotationId = ?
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
                $QuotationId
            ))) {
                return $this->getById($QuotationId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($QuotationId)
    {
        $query = "SELECT * FROM quotation WHERE QuotationId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($QuotationId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return null;
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT * FROM quotation WHERE CompanyId =? order by CreateDate desc";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }

    public function getDetailedCampanyById($CompanyId)
    {
        $query = "SELECT * FROM quotation WHERE CompanyId =? order by CreateDate desc";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));
        $quotationWithCustomers = array();
        $partner = new Partner($this->conn);
        $quotation_products = new Quotation_products($this->conn);


        if ($stmt->rowCount()) {
            $quotation =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($quotation as $order) {

                $customer = $partner->getByPartnerId($order["ParntersId"]);
                $products = $quotation_products->getBQuotationId($order["QuotationId"]);

                $order["Customer"] = $customer;
                $order["CardClass"] = ['card'];
                $order["Products"] = $products;

                array_push($quotationWithCustomers, $order);
            }
        }
        return $quotationWithCustomers;
    }

    public function getDetailedSingleCampanyById($QuotationId)
    {
        $query = "SELECT * FROM quotation WHERE QuotationId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($QuotationId));
        $quotationWithCustomers = null;
        $partner = new Partner($this->conn);
        $order_products = new Order_products($this->conn);
        $company = new Company($this->conn);


        if ($stmt->rowCount()) {
            $order =  $stmt->fetch(PDO::FETCH_ASSOC);
            $customer = $partner->getById($order["ParntersId"]);
            $products = $order_products->getBOrderIdId(
                $QuotationId
            );
            $order["Customer"] = $customer;
            $order["Products"] = $products;
            $order["Company"] = $company->getById($order["CompanyId"]);
            $order["CardClass"] = ['card'];
            $quotationWithCustomers = $order;
        }
        return $quotationWithCustomers;
    }
}
