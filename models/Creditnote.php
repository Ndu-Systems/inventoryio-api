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
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $CreditnoteId = getUuid($this->conn);

        $query = "
        INSERT INTO creditnote(
            CreditnoteId,
            CompanyId,
            OrderId,
            Total,
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
                $CreditnoteId,
                $CompanyId,
                $OrderId,
                $Total,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                $creditnoteId = $this->conn->lastInsertId();
                return $this->getById($creditnoteId);
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
}
