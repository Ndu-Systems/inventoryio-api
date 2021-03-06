<?php
include_once 'Image.php';
include_once 'Brand.php';
include_once 'Catergory.php';
include_once 'Productoptions.php';

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
        $TrackInventory,
        $Quantity,
        $LowStock,
        $ProductAvailability,
        $PreparingDays,
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
            TrackInventory,
            Quantity,
            LowStock,
            ProductAvailability,
            PreparingDays,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?
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
                $TrackInventory,
                $Quantity,
                $LowStock,
                $ProductAvailability,
                $PreparingDays,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getSigleProductWithImages($ProductId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
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
        $TrackInventory,
        $Quantity,
        $LowStock,
        $ProductAvailability,
        $PreparingDays,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        product
        SET
        BrandId = ? ,
        CatergoryId = ? ,
        CompanyId = ? ,
        Name = ? ,
        Description = ? ,
        UnitPrice = ? ,
        UnitCost = ? ,
        Code = ? ,
        SKU = ? ,
        TrackInventory = ? ,
        Quantity = ? ,
        LowStock = ? ,
        ProductAvailability=?,
        PreparingDays=?,
        CreateUserId = ? ,
        ModifyUserId = ? ,
        StatusId = ? ,
        ModifyDate = NOW()
        WHERE
        ProductId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $BrandId,
                $CatergoryId,
                $CompanyId,
                $Name,
                $Description,
                $UnitPrice,
                $UnitCost,
                $Code,
                $SKU,
                $TrackInventory,
                $Quantity,
                $LowStock,
                $ProductAvailability,
                $PreparingDays,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $ProductId


            ))) {
                return $this->getSigleProductWithImages($ProductId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
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
    public function getCompanyByHandler($Handler)
    {
        $query = "SELECT * FROM company WHERE Handler =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Handler));

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
        p.ProductAvailability,
        p.PreparingDays,
        p.CreateDate,
        p.CreateUserId,
        p.ModifyDate,
        p.ModifyUserId,
        p.StatusId,
        i.Url,
        i.StatusId as ImageStatusId,
        c.Name as Catergory,
        b.Name as Brand,
        (p.UnitPrice-p.UnitCost) as Profit,
        round((100-(p.UnitCost / p.UnitPrice)*100), 2) as Margin,

        CASE 
        WHEN p.Quantity > p.LowStock THEN 'stock good' 
        WHEN p.Quantity <= p.LowStock THEN 'stock warn' 
        WHEN p.Quantity <= 0  THEN 'stock error' 
        END AS Class
        FROM product p
        left join brand b on p.BrandId = b.BrandId
        left join catergory c on p.CatergoryId = c.CatergoryId
        left join image i on i.OtherId =  p.ProductId
        WHERE p.CompanyId = ? 
        group by p.ProductId
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }

    public function getDetailedProductWithImages($CompanyId)
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
        p.ProductAvailability,
        p.PreparingDays,
        p.CreateDate,
        p.CreateUserId,
        p.ModifyDate,
        p.ModifyUserId,
        p.StatusId,
        (p.UnitPrice-p.UnitCost) as Profit,
        round((100-(p.UnitCost / p.UnitPrice)*100), 2) as Margin,

        CASE 
        WHEN p.Quantity > p.LowStock THEN 'stock good' 
        WHEN p.Quantity <= p.LowStock THEN 'stock warn' 
        WHEN p.Quantity <= 0  THEN 'stock error' 
        END AS Class
        FROM product p
        WHERE p.CompanyId = ? 
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        $productsWithImages = array();
        $image = new Image($this->conn);
        $brand = new Brand($this->conn);
        $catergory = new Catergory($this->conn);
        $productoptions = new Productoptions($this->conn);

        if ($stmt->rowCount()) {
            $products =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($products as $product) {

                $images = $image->getParentIdById($product["ProductId"]);
                $product["Images"] = $images;
                $product["Brand"] = $brand->getById($product["BrandId"]);
                $product["Catergory"] = $catergory->getById($product["CatergoryId"]);
                $product["Productoptions"] = $productoptions->getByProductId($product["ProductId"]);
                array_push($productsWithImages, $product);
            }
        }
        return  $productsWithImages;
    }

    public function getDetailedProductWithImagesByCatergoryId($CatergoryId)
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
        p.ProductAvailability,
        p.PreparingDays,
        p.CreateDate,
        p.CreateUserId,
        p.ModifyDate,
        p.ModifyUserId,
        p.StatusId,
        (p.UnitPrice-p.UnitCost) as Profit,
        round((100-(p.UnitCost / p.UnitPrice)*100), 2) as Margin,

        CASE 
        WHEN p.Quantity > p.LowStock THEN 'stock good' 
        WHEN p.Quantity <= p.LowStock THEN 'stock warn' 
        WHEN p.Quantity <= 0  THEN 'stock error' 
        END AS Class
        FROM product p
        WHERE p.CatergoryId = ? 
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CatergoryId));

        $productsWithImages = array();
        $image = new Image($this->conn);
        $brand = new Brand($this->conn);
        $catergory = new Catergory($this->conn);
        $productoptions = new Productoptions($this->conn);
        if ($stmt->rowCount()) {
            $products =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($products as $product) {

                $images = $image->getParentIdById($product["ProductId"]);
                $product["Images"] = $images;
                $product["Brand"] = $brand->getById($product["BrandId"]);
                $product["Catergory"] = $catergory->getById($product["CatergoryId"]);
                $product["Productoptions"] = $productoptions->getByProductId($product["ProductId"]);
                array_push($productsWithImages, $product);
            }
        }
        return  $productsWithImages;
    }

    public function getDetailedProductForShops($CompanyId)
    {
        $query = "SELECT *
        FROM product 
        WHERE CompanyId = ? 
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        $productsWithImages = array();
        $image = new Image($this->conn);
        if ($stmt->rowCount()) {
            $products =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach ($products as $product) {

                $images = $image->getParentIdById($product["ProductId"]);
                $product["Images"] = $images;
                if ($images) {
                    array_push($productsWithImages, $product);
                }
            }
        }
        return  $productsWithImages;
    }

    public function getSigleProductWithImages($ProductId)
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
        p.TrackInventory,
        p.Quantity,
        p.LowStock,
        p.ProductAvailability,
        p.PreparingDays,
        p.CreateDate,
        p.CreateUserId,
        p.ModifyDate,
        p.ModifyUserId,
        p.StatusId,
        (p.UnitPrice-p.UnitCost) as Profit,
        round((100-(p.UnitCost / p.UnitPrice)*100), 2) as Margin,

        CASE 
        WHEN p.Quantity > p.LowStock THEN 'stock good' 
        WHEN p.Quantity <= p.LowStock THEN 'stock warn' 
        WHEN p.Quantity <= 0  THEN 'stock error' 
        END AS Class
        FROM product p
        WHERE p.ProductId = ? 
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId));

        $image = new Image($this->conn);
        $brand = new Brand($this->conn);
        $catergory = new Catergory($this->conn);
        $productoptions = new Productoptions($this->conn);

        if ($stmt->rowCount()) {
            $product =  $stmt->fetch(PDO::FETCH_ASSOC);
            //   foreach ($products as $product) {

            $images = $image->getParentIdById($product["ProductId"]);
            $product["Images"] = $images;
            $product["Brand"] = $brand->getById($product["BrandId"]);
            $product["Catergory"] = $catergory->getActiveById($product["CatergoryId"]);
            $product["Productoptions"] = $productoptions->getByProductId($product["ProductId"]);

            //array_push($productsWithImages, $product);


            //  }
        }
        return  $product;
    }
}
