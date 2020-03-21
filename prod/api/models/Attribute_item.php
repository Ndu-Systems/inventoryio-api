<?php


class Attribute_item
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $AttributeId,
        $AttributeValue,
        $AttributePrice,
        $AttributeQuantity,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $query = "
        INSERT INTO attribute_item(
            AttributeId ,
            AttributeValue ,
            AttributePrice ,
            AttributeQuantity ,
            CreateUserId ,
            ModifyUserId ,
            StatusId 
        )
        VALUES(
        ?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $AttributeId,
                $AttributeValue,
                $AttributePrice,
                $AttributeQuantity,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $Id = $this->conn->lastInsertId();
                return $this->getById($Id);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function updateattribute_item(
        $Id,
        $AttributeId,
        $AttributeValue,
        $AttributePrice,
        $AttributeQuantity,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        attribute_item
    SET
        AttributeId = ? ,
        AttributeValue = ? ,
        AttributePrice = ? ,
        AttributeQuantity = ? ,
        CreateUserId = ? ,
        ModifyUserId = ? ,
        StatusId = ? 
        ModifyDate = NOW()
        WHERE
        Id = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $AttributeId,
                $AttributeValue,
                $AttributePrice,
                $AttributeQuantity,
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
        $query = "SELECT * FROM attribute_item WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByAttributeId($AttributeId)
    {
        $query = "SELECT * FROM attribute_item WHERE AttributeId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($AttributeId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        return null;
    }

}
