<?php
include_once 'Attribute_item.php';


class Attribute
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $Name,
        $AttributeType,
        $CompanyId,
        $ProductId,
        $Shop,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        $AttributeId = getUuid($this->conn);

        $query = "
        INSERT INTO attribute(
            AttributeId,
            Name,
            AttributeType,
            CompanyId,
            ProductId,
            Shop,
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
                $AttributeId,
                $Name,
                $AttributeType,
                $CompanyId,
                $ProductId,
                $Shop,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($AttributeId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function updateattribute(
        $AttributeId,
        $Name,
        $AttributeType,
        $CompanyId,
        $ProductId,
        $Shop,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        attribute
    SET
            Name= ? ,
            AttributeType= ? ,
            CompanyId= ? ,
            ProductId= ? ,
            Shop= ? ,
            CreateUserId= ? ,
            ModifyUserId= ? ,
            StatusId= ? 
        ModifyDate = NOW()
        WHERE
        AttributeId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Name,
                $AttributeType,
                $CompanyId,
                $ProductId,
                $Shop,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $AttributeId

            ))) {
                return $this->getById($AttributeId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($attributeId)
    {
        $query = "SELECT * FROM attribute WHERE attributeId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($attributeId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    public function getByProductId($ProductId)
    {
        $query = "SELECT * FROM attribute WHERE ProductId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId));
        $attributes = array();

        if ($stmt->rowCount()) {
            $items =  $stmt->fetchAll(PDO::FETCH_ASSOC);
            $attributeItem = new Attribute_item($this->conn);
            foreach ($items as $item) {
                $values = $attributeItem->getByAttributeId($item["AttributeId"]);
                $item["Values"] = $values;
                array_push($attributes, $item);
            }
        }
        return $attributes;
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT
    *
        FROM
            attribute WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
