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

        $RoleId = getUuid($this->conn);

        $query = "
        INSERT INTO company(
            RoleId,
            CompanyId,
            Name,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?
        )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $RoleId,
                $CompanyId,
                $Name,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($CompanyId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateRole(
        $RoleId,
        $CompanyId,
        $Name,
        $CreateUserId,
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
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $RoleId
            ))) {
                return $this->getById($RoleId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($RoleId)
    {
        $query = "SELECT * FROM roles WHERE RoleId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($RoleId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByCompanyId($CompanyId)
    {
        $query = "SELECT * FROM roles WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        return Array();
    }
}
