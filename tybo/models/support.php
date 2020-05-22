<?php

class Support
{
    //DB Stuff
    private $conn;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    // get all support
    public function getAll($CompanyId, $StatusId)
    {
        $query = "SELECT * FROM support WHERE CompanyId =? AND StatusId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId, $StatusId));
        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
         }
    }

    public function getById($SupportId)
    {
        $query = "SELECT * FROM support WHERE SupportId = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($SupportId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    // add support
    public function add(
        $CompanyId,
        $UserId,
        $Subject,
        $Message,
        $CallBack,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $SupportId = getUuid($this->conn);

        $query = "
        INSERT INTO support
        (
        SupportId, 
        CompanyId, 
        UserId, 
        Subject, 
        Message, 
        CallBack, 
        CreateUserId, 
        ModifyUserId, 
        StatusId
        ) 
        VALUES (?,?,?,?,?,?,?,?,?)
        ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $SupportId,
                $CompanyId,
                $UserId,
                $Subject,
                $Message,
                $CallBack,            
                $CreateUserId,            
                $ModifyUserId,
                $StatusId
            ))) { return $this->getById($SupportId); }
        } catch (Exception $e) {
            return array("ERROR", $e);             
        }
    }
}
