<?php


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
        $Surname,
        $CellphoneNumber,
        $Password,
        $CompanyId,
        $RoleId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        if ($this->getByEmail($Email) > 0) {
            return json_encode("user already exists");
        }
        $UserId = getUuid($this->conn);

        $query = "
        INSERT INTO users(
            UserId,
            Email,
            Name,
            Surname,
            CellphoneNumber,
            Password,
            CompanyId,
            RoleId,
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
                $UserId,
                $Email,
                $Name,
                $Surname,
                $CellphoneNumber,
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
            return $e;
        }
    }

    //Get a user
    public function getUserByEmailandPassword($email, $password)
    {
        $query = "SELECT  * FROM users WHERE Email =  ? AND BINARY Password = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email, $password));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }


    public function updateUser(
        $Email,
        $Name,
        $Surname,
        $CellphoneNumber,
        $Password,
        $CompanyId,
        $RoleId,
        $ModifyUserId,
        $StatusId,
        $UserId
    ) {
        $query = "UPDATE
        users
    SET
    Email = ?,
        Name = ?,
        Surname = ?,
        CellphoneNumber = ?,
        Password = ?,
        CompanyId = ?,
        RoleId = ?,
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
                $Surname,
                $CellphoneNumber,
                $Password,
                $CompanyId,
                $RoleId,
                $ModifyUserId,
                $StatusId,
                $UserId

            ))) {
                return $this->getUserById($UserId);
            }
        } catch (Exception $e) {
            return $e;
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
    public function getByEmail($Email)
    {
        $query = "SELECT * FROM users WHERE Email =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Email));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
