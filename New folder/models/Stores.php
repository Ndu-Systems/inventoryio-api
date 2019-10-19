<?php

class Stores
{
    // DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function add(
        $Name,
        $Address,
        $TelephoneNumber,
        $CompanyId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $StoreId = getUuid($this->conn);
        $query = "
        INSERT INTO stores(
            StoreId,
            Name, 
            Address, 
            TelephoneNumber, 
            CompanyId, 
            CreateUserId, 
            ModifyUserId, 
            StatusId) 
            VALUES(?,?,?,?,?,?,?,?);
        ";
        try {
            $stmt = $this->conn->prepare($query);

            if ($stmt->execute(array(
                $StoreId,
                $Name,
                $Address,
                $TelephoneNumber,
                $CompanyId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($StoreId, $CompanyId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function update(
        $StoreId,
        $Name,
        $Address,
        $TelephoneNumber,
        $CompanyId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "
       UPDATE stores SET 
       Name=?,
       Address=?,
       TelephoneNumber=?,
       CompanyId=?,
       ModifyDate=Now(),
       ModifyUserId=?,
       StatusId=?
       WHERE StoreId=?
       ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Name,
                $Address,
                $TelephoneNumber,
                $CompanyId,
                $ModifyUserId,
                $StatusId,
                $StoreId
            ))) {
                return $this->getById($StoreId, $CompanyId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($StoreId, $CompanyId)
    {
        $query = "
            SELECT * FROM stores where StoreId = ? AND CompanyId = ? ORDER BY CreateDate DESC
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($StoreId, $CompanyId));
            if ($stmt->rowCount()) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getByCompanyId($CompanyId, $StatusId)
    {
        $query = "
            SELECT * FROM stores WHERE CompanyId = ? 
            AND StatusId = ?
            ORDER BY CreateDate DESC
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($CompanyId, $StatusId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getByUserId($UserId)
    {
        $query = "
        SELECT * FROM stores s 
        JOIN user_store us on s.StoreId = us.StoreId
        where us.UserId = ? 
        ORDER BY us.CreateDate DESC                       
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($UserId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return $e;
        }
    }
}
