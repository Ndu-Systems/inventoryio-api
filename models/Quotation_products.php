<?php
include_once 'Image.php';


class Quotation_products
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $QuotationId,
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
        $UnitPrice = number_format((float) $UnitPrice, 2, '.', '');
        $subTotal = number_format((float) $subTotal, 2, '.', '');

        $query = "
        INSERT INTO quotation_products(
            Id,
            QuotationId,
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
                $QuotationId,
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
            return array("ERROR", $e);
        }
    }




    public function updatequotation_products(
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
        $UnitPrice = number_format((float) $UnitPrice, 2, '.', '');
        $query = "UPDATE
        quotation_products
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
                return $this->getById($Id);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($Id)
    {
        $query = "SELECT * FROM quotation_products WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getBQuotationId($QuotationId)
    {
        $query = "SELECT * FROM quotation_products WHERE QuotationId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($QuotationId));

        // if ($stmt->rowCount()) {
        //     return $stmt->fetchAll(PDO::FETCH_ASSOC);
        // }
        $productsWithImages = Array();
        $image = new Image($this->conn);

        if ($stmt->rowCount()) {
            $products =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($products as $product) {

                $images = $image->getParentIdById($product["ProductId"]);
                $product["Images"] = $images;
                array_push($productsWithImages, $product);


            }
        }
        return  $productsWithImages;
    }
}
