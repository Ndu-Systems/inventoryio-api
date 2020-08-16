<?php


class Notification
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function add(
        $OtherId,
        $Type,
        $Message,
        $Channel,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $Id = getUuid($this->conn);

        $query = "
        INSERT INTO notification(
            Id,
            OtherId,
            Type,
            Message,
            Channel,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Id,
                $OtherId,
                $Type,
                $Message,
                $Channel,
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




    public function update(
        $Id,
        $OtherId,
        $Type,
        $Message,
        $Channel,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        notification
        SET
        OtherId= ?,
        Type= ?,
        Message= ?,
        Channel= ?,
        CreateUserId= ?,
        ModifyUserId= ?,
        StatusId= ?,
        ModifyDate = NOW()
    WHERE
    Id = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $OtherId,
                $Type,
                $Message,
                $Channel,
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
        $query = "SELECT * FROM notification WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByProductId($ProductId)
    {
        $query = "SELECT * FROM notification WHERE ProductId =? AND StatusId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId, 1));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
