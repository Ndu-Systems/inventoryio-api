<?php
require 'Config.php';

class Users
{
    //DB Stuff
    private $conn;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $Email,
        $Name,
        $UserType,
        $Surname,
        $CellphoneNumber,
        $Address,
        $Password,
        $CompanyId,
        $RoleId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        if ($this->getByEmail($Email) > 0) {
            return "user already exists";
        }
        $UserId = getUuid($this->conn);
        
        $query = "
        INSERT INTO users(
            UserId,
            Email,
            Name,
            UserType,
            Surname,
            CellphoneNumber,
            Address,
            Password,
            CompanyId,
            RoleId,          
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
           ?,?,?,?,?,?,?,?,?,?,?,?,?
        )";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $Email,
                $Name,
                $UserType,
                $Surname,
                $CellphoneNumber,
                $Address,
                $Password,
                $CompanyId,
                $RoleId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getUserById($UserId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    //Get a user
    public function getUserByEmailandPassword($email, $password)
    {
        $query = "SELECT  * FROM users WHERE Email =  ? AND BINARY Password = ?";
 
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email, $password));
 
        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);;
        }
    }

    public function getUserByEmail($email)
    {
        $query = "SELECT  * FROM users WHERE Email =  ?";
 
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email));
 
        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }


    public function updateUser(
        $Email,
        $Name,
        $UserType,
        $Surname,
        $CellphoneNumber,
        $Address,
        $Password,
        $RoleId,
        $CompanyId,
        $ModifyUserId,
        $StatusId,
        $UserId
    ) {
        $query = "UPDATE
        users
    SET
    Email = ?,
        Name = ?,
        UserType = ?,
        Surname = ?,
        CellphoneNumber = ?,
        Address = ?,
        Password = ?,
        RoleId = ?,
        CompanyId = ?,      
        ModifyDate = NOW(),
        ModifyUserId = ?,
        StatusId = ?
    WHERE
         UserId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Email,
                $Name,
                $UserType,
                $Surname,
                $CellphoneNumber,
                $Address,
                $Password,
                $RoleId,
                $CompanyId,
                $ModifyUserId,
                $StatusId,
                $UserId

            ))) {
                return $this->getUserById($UserId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUserById($UserId)
    {
        $query = "SELECT * FROM users WHERE UserId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    public function getUserByToken($Token)
    {
        $query = "SELECT * FROM users WHERE SecurityToken =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Token));

        if ($stmt->rowCount()) {
            $result =$stmt->fetch(PDO::FETCH_ASSOC);
            $result["Password"] = null;
            return $result;
        }
    }

    public function getByEmail($Email)
    {
        $query = "SELECT * FROM users WHERE Email =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Email));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByCompanyId($CompanyId, $StatusId)
    {
        $query = "SELECT * FROM users 
        WHERE CompanyId = ? 
        AND StatusId=?        
        ORDER BY CreateDate DESC";

        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($CompanyId, $StatusId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUsers($StatusId)
    {
        $query = "SELECT * FROM users WHERE StatusId = ? ORDER BY CreateDate DESC";

        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($StatusId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function addUserStore(
        $UserId,
        $StoreId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        // avoid duplicates ekuseni
        if ($this->getUserForStore($UserId, $StoreId) > 0) {
            return "user has been allocated to this store";
        }
        $query = "
        INSERT INTO user_store(
            UserId, 
            StoreId,             
            CreateUserId,          
            ModifyUserId, 
            StatusId) VALUES 
            (?,?,?,?,?)
       ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $StoreId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getUsersByStoreId($StoreId, $StatusId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUsersByStoreId($StoreId, $StatusId)
    {
        $query = "
        SELECT u.* from users u
        JOIN user_store us on u.UserId = us.UserId
        WHERE us.StoreId = ?
        AND u.StatusId = ? 
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($StoreId, $StatusId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUserForStore($UserId, $StoreId)
    {
        $query = "
        SELECT u.* from users u
        JOIN user_store us on u.UserId = us.UserId
        WHERE us.UserId = ? AND us.StoreId = ?
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($UserId, $StoreId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function addUserRole(
        $UserId,
        $RoleId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        // avoid duplicates ekuseni
        if ($this->getUserForRole($UserId, $RoleId) > 0) {
            return "user has been allocated to this role";
        }
        $query = "
        INSERT INTO user_roles(
            UserId, 
            RoleId,             
            CreateUserId,          
            ModifyUserId, 
            StatusId) VALUES 
            (?,?,?,?,?)
       ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $RoleId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getUsersByRoleId($RoleId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUsersByRoleId($RoleId)
    {
        $query = "
        SELECT u.* FROM users u 
        JOIN user_roles ur on u.UserId = ur.UserId
        WHERE ur.RoleId = ?
       ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($RoleId));
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
            return array();
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getUserForRole($UserId, $RoleId)
    {
        $query = "
        SELECT u.* FROM users u 
        JOIN user_roles ur on u.UserId = ur.UserId
        WHERE ur.UserId = ? AND ur.RoleId = ?
       ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($UserId, $RoleId));
            if ($stmt->rowCount()) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

}
