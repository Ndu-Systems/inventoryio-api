<?php


class Roles
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
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $query = "
        INSERT INTO roles(         
            CompanyId,
            Name,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?
        )
        ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $Name,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $RoleId = $this->conn->lastInsertId();
                return $this->getById($RoleId, $CompanyId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateRole(
        $RoleId,
        $CompanyId,
        $Name,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        roles
    SET
        CompanyId = ?,
        Name = ?,
        ModifyDate = NOW(),
        ModifyUserId = ?,
        StatusId = ?
    WHERE
    RoleId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $Name,
                $ModifyUserId,
                $StatusId,
                $RoleId
            ))) {
                return $this->getById($RoleId, $CompanyId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($RoleId, $CompanyId)
    {
        $query = "SELECT * FROM roles WHERE RoleId =? AND CompanyId=? ORDER BY CreateDate DESC";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($RoleId, $CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByCompanyId($CompanyId)
    {
        $query = "SELECT * FROM roles WHERE CompanyId =? ORDER BY CreateDate DESC";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        return array();
    }

    public function addRolePermission(
        $RoleId,
        $PermissionId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        // avoid duplicates ekuseni
        if($this->getARolePermission($RoleId,$PermissionId) > 0){
            return "role and permission already configured";
        }
        $query = "
        INSERT INTO role_permission(
            RoleId,
            PermissionId, 
            CreateUserId, 
            ModifyUserId, 
            StatusId) 
            VALUES(?,?,?,?,?);
        ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $RoleId,
                $PermissionId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getRolePermissions($RoleId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getRolePermissions($RoleId)
    {
        $query = "
        SELECT p.* FROM 
        permissions AS p 
        JOIN role_permission rp on p.PermissionId = rp.PermissionId
        WHERE rp.RoleId = ? 
        ORDER BY p.CreateDate DESC
        ";

        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($RoleId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getARolePermission($RoleId, $PermissionId)
    {
        $query = "
        SELECT * from role_permission 
        WHERE RoleId = ? AND PermissionId = ? ORDER BY CreateDate DESC
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($RoleId, $PermissionId));
            if ($stmt->rowCount()) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return $e;
        }
    }
    
    public function deleteARolePermission($RoleId, $PermissionId)
    {
        $query = "
        DELETE from role_permission 
        WHERE RoleId = ? AND PermissionId = ?
        ";
        try {
            $stmt = $this->conn->prepare($query);
           if($stmt->execute(array($RoleId, $PermissionId))){
               return true;
           }
        } catch (Exception $e) {
            return $e;
        }
      
    }

    public function getRolesByUserId($UserId)
    {
        $query = "
        SELECT r.* FROM users u 
        JOIN user_roles ur on u.UserId = ur.UserId
        JOIN roles r on ur.RoleId = r.RoleId
        WHERE ur.UserId = ? 
        ORDER BY r.CreateDate DESC
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($UserId));
            if($stmt->rowCount()){
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
        }  catch (Exception $e) {
            return $e;
        }
    }


}
