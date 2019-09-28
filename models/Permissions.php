<?php

class Permissions
{
    // db connect
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function read($CompanyId)
    {
        $query = "
            SELECT * FROM permissions WHERE CompanyId = ? 
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($CompanyId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($PermissionId)
    {
        $query = "
            SELECT * FROM permissions WHERE PermissionId = ?
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($PermissionId));
            if ($stmt->rowCount()) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function add(
        $Name,
        $CompanyId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $PermissionId = getUuid($this->conn);
        $query = "
        INSERT INTO permissions(
            PermissionId, 
            Name, 
            CompanyId, 
            CreateUserId, 
            ModifyUserId, 
            StatusId) 
            VALUES (?,?,?,?,?,?)
        ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $PermissionId,
                $Name,
                $CompanyId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($PermissionId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function update(
        $PermissionId,
        $Name,
        $CompanyId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "        
            UPDATE permissions SET           
            Name=?,
            CompanyId=?,
            ModifyDate = NOW(),
            ModifyUserId=?,
            StatusId=?
            WHERE PermissionId=?
        ";

        try {
            $stmt = $this->conn->prepare($query);
            if($stmt->execute(array(
                $Name,
                $CompanyId,
                $ModifyUserId,
                $StatusId,
                $PermissionId
            ))){
                return $this->getById($PermissionId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }
}
