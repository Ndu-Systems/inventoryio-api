<?php


class Productprocess
{
    //DB Stuff
    private $conn;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function add(
        $ProductId,
        $CompanyId,
        $ProcessName,
        $Started,
        $AssignedUser,
        $StartDatetime,
        $FinishDatetime,
        $NotifyCustomer,
        $NotifyMessage,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $Id = getUuid($this->conn);

        $query = "
        INSERT INTO productprocess(
            Id,
            ProductId,
            CompanyId,
            ProcessName,
            Started,
            AssignedUser,
            StartDatetime,
            FinishDatetime,
            NotifyCustomer,
            NotifyMessage,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Id,
                $ProductId,
                $CompanyId,
                $ProcessName,
                $Started,
                $AssignedUser,
                $StartDatetime,
                $FinishDatetime,
                $NotifyCustomer,
                $NotifyMessage,
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
        $ProductId,
        $CompanyId,
        $ProcessName,
        $Started,
        $AssignedUser,
        $StartDatetime,
        $FinishDatetime,
        $NotifyCustomer,
        $NotifyMessage,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        productprocess
    SET
        ProductId= ?,
        CompanyId= ?,
        ProcessName= ?,
        Started= ?,
        AssignedUser= ?,
        StartDatetime= ?,
        FinishDatetime= ?,
        NotifyCustomer= ?,
        NotifyMessage= ?,
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
                $ProductId,
                $CompanyId,
                $ProcessName,
                $Started,
                $AssignedUser,
                $StartDatetime,
                $FinishDatetime,
                $NotifyCustomer,
                $NotifyMessage,
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
        $query = "SELECT * FROM productprocess WHERE Id =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getByProductId($ProductId)
    {
        $query = "SELECT * FROM productprocess WHERE ProductId =? AND StatusId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ProductId, 1));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
    // public function getParentIdByIdSigle($OtherId)
    // {
    //     $query = "SELECT * FROM productprocess WHERE OtherId =? AND StatusId = ? order by CreateDate desc";

    //     $stmt = $this->conn->prepare($query);
    //     $stmt->execute(array($OtherId, 1));

    //     if ($stmt->rowCount()) {
    //         return $stmt->fetch(PDO::FETCH_ASSOC);
    //     }
    // }
}
