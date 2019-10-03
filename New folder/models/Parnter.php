<?php


class Parnter
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

        $BrandId = getUuid($this->conn);

        $query = "
        INSERT INTO parnter(
            BrandId,
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
                $BrandId,
                $CompanyId,
                $Name,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($BrandId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }




    public function updateBrand(
        $BrandId,
        $CompanyId,
        $Name,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE
        parnter
    SET
        CompanyId = ?,
        Name = ?,
        CreateUserId = ?,
        ModifyUserId = ?,
        StatusId = ?
        ModifyDate = NOW()
        WHERE
        BrandId = ?
         ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $BrandId,
                $CompanyId,
                $Name,
                $CreateUserId,
                $ModifyUserId,
                $StatusId


            ))) {
                return $this->getById($BrandId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getById($brandId)
    {
        $query = "SELECT * FROM parnter WHERE BrandId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($brandId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }

    public function getCampanyById($CompanyId)
    {
        $query = "SELECT
        BrandId,
        CompanyId,
        Name,
        CreateDate,
        CreateUserId,
        ModifyDate,
        ModifyUserId,
        StatusId,
        CASE WHEN StatusId = 1 THEN 'true' WHEN StatusId = 0 THEN 'false'
        END AS Status
        FROM
            parnter WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
