<?php


class Config
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
        $Name,
        $Type,
        $Label,
        $Value,
        $IsRequired,
        $FieldType,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $ConfigId = getUuid($this->conn);

        $query = "
        INSERT INTO config(
            ConfigId,
            CompanyId,
            Name,
            Type,
            Label,
            Value,
            IsRequired,
            FieldType,
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
                $ConfigId,
                $CompanyId,
                $Name,
                $Type,
                $Label,
                $Value,
                $IsRequired,
                $FieldType,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $ConfigId = $this->conn->lastInsertId();
                return $this->getById($ConfigId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
        $ConfigId,
        $CompanyId,
        $Name,
        $Type,
        $Label,
        $Value,
        $IsRequired,
        $FieldType,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        config
        SET
        CompanyId   =  ?,
        Name   =  ?,
        Type   =  ?,
        Label   =  ?,
        Value   =  ?,
        IsRequired = ?,
        FieldType = ?,
        CreateUserId   =  ?,
        ModifyUserId   =  ?,
        StatusId   =  ?,
        ModifyDate = NOW()
            WHERE
            ConfigId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(

                $CompanyId,
                $Name,
                $Type,
                $Label,
                $Value,
                $IsRequired,
                $FieldType,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $ConfigId

            ))) {

                return $this->getById($ConfigId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($ConfigId)
    {
        $query = "SELECT * FROM config WHERE ConfigId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ConfigId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT * FROM config WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }


    public function getCampanyByIdAndType($CompanyId, $Type)
    {
        $query = "SELECT * FROM config WHERE CompanyId =? and Type = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId,$Type));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }


    public function getCampanyConfigCount($CompanyId)
    {
        $query = "SELECT COUNT(*) FROM config WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
