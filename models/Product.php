<?php


class Product
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $BrandId,
        $CatergoryId,
        $CompanyId,
        $Name,
        $Description,
        $UnitPrice,
        $UnitCost,
        $Code,
        $SKU,
        $Quantity,
        $LowStock,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $ProductId = getUuid($this->conn);

        $query = "
        INSERT INTO product(
            ProductId,
            BrandId,
            CatergoryId,
            CompanyId,
            Name,
            Description,
            UnitPrice,
            UnitCost,
            Code,
            SKU,
            Quantity,
            LowStock,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?
        )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ProductId,
                $BrandId,
                $CatergoryId,
                $CompanyId,
                $Name,
                $Description,
                $UnitPrice,
                $UnitCost,
                $Code,
                $SKU,
                $Quantity,
                $LowStock,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($ProductId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateUser(
        $ProductId,
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
        product
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
    ProductId = ?
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
                $ProductId


            ))) {
                return $this->getUserById($ProductId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($ProductId)
    {
        $query = "SELECT * FROM product WHERE ProductId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT * FROM product WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }


    public function getDetailedProduct($CompanyId)
    {
        $query = "SELECT 
        p.ProductId,
        p.BrandId,
        p.CatergoryId,
        p.CompanyId,
        p.SupplierId,
        p.Name,
        p.Description,
        p.UnitPrice,
        p.UnitCost,
        p.Code,
        p.SKU,
        p.Quantity,
        p.LowStock,
        p.CreateDate,
        p.CreateUserId,
        p.ModifyDate,
        p.ModifyUserId,
        p.StatusId,
        c.Name as Catergory,
        b.Name as Brand
        FROM product p
        left join brand b on p.BrandId = b.BrandId
        left join catergory c on p.CatergoryId = c.CatergoryId
        WHERE p.CompanyId = ?
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
