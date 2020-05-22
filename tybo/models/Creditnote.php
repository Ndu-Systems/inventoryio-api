<?php


class Creditnote
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
        $OrderId,
        $Total,
        $Reason,
        $Notes,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $CreditnoteId = getUuid($this->conn);
        $CreditNoteNo = $this->getLastCreditNoteNo($CompanyId) + 1;


        $query = "
        INSERT INTO creditnote(
            CreditnoteId,
            CreditNoteNo,
            CompanyId,
            OrderId,
            Total,
            Reason,
            Notes,
            CreateUserId,
            ModifyUserId,
            StatusId
        )
        VALUES(
        ?,?,?,?,?,?,?,?,?,?
         )
";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CreditnoteId,
                $CreditNoteNo,
                $CompanyId,
                $OrderId,
                $Total,
                $Reason,
                $Notes,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $creditnoteId = $this->conn->lastInsertId();
                return $this->getById($CreditnoteId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function update(
        $CreditnoteId,
        $CompanyId,
        $OrderId,
        $Total,
        $Reason,
        $Notes,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        creditnote
        SET
        CreditnoteId = ?,
        CompanyId = ?,
        OrderId = ?,
        Total = ?,
        Reason = ?,
        Notes = ?,
        CreateUserId = ?,
        ModifyUserId = ?,
        StatusId= ?
        ModifyDate = NOW()
            WHERE
            CreditnoteId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $CompanyId,
                $OrderId,
                $Total,
                $Reason,
                $Notes,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $CreditnoteId

            ))) {

                return $this->getById($CreditnoteId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($CreditnoteId)
    {
        $query = "SELECT * FROM creditnote WHERE CreditnoteId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CreditnoteId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    public function getByOrderId($OrderId)
    {
        $query = "SELECT * FROM creditnote WHERE OrderId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($OrderId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getLastCreditNoteNo($CompanyId)
    {
        $query = "SELECT CreditNoteNo FROM creditnote WHERE CompanyId = ?
                 ORDER BY CreateDate DESC LIMIT 1";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            $item = $stmt->fetch(PDO::FETCH_ASSOC);
            return $item["CreditNoteNo"];
        }
        return 0;
    }
}
