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
        $OrderPrefix,
        $InvoicePrefix,
        $InvoiceFooter,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $OrdersId = getUuid($this->conn);

        $query = "
        INSERT INTO config(
            CompanyId,
            OrderPrefix,
            InvoicePrefix,
            InvoiceFooter,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $OrderPrefix,
                $InvoicePrefix,
                $InvoiceFooter,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $ConfigId = $this->conn->lastInsertId();
                return $this->getById($ConfigId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function update(
        $ConfigId,
        $CompanyId,
        $OrderPrefix,
        $InvoicePrefix,
        $InvoiceFooter,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        config
        SET
        CompanyId = ?,
        OrderPrefix = ?,
        InvoicePrefix = ?,
        InvoiceFooter = ?,
        CreateUserId = ?,
        ModifyUserId = ?,
        StatusId = ?,
    ModifyDate = NOW()
    WHERE
    ConfigId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(

                $CompanyId,
                $OrderPrefix,
                $InvoicePrefix,
                $InvoiceFooter,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $ConfigId
            ))) {

                return $this->getById($ConfigId);
            }
        } catch (Exception $e) {
            return $e;
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
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
