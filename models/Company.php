<?php
include_once 'Image.php';
include_once 'Config.php';


class Company
{
    //DB Stuff
    private $conn;


    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Add user
    public function add(
        $Name,
        $Website,
        $TelephoneNumber,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {

        $CompanyId = getUuid($this->conn);

        $query = "
        INSERT INTO company(
            CompanyId,
            Name,
            Website,
            TelephoneNumber,
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
                $Name,
                $Website,
                $TelephoneNumber,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getById($CompanyId);
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }




    public function updateUser(
        $UserId,
        $Email,
        $Name,
        $Surname,
        $CellphoneNumber,
        $Password,
        $CompanyId,
        $ModifyUserId,
        $StatusId
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
                $ModifyUserId,
                $StatusId,
                $UserId

            ))) {
                return $this->getById($UserId); // temp fix
            }
        } catch (Exception $e) {
            return array("ERROR", $e);
        }
    }

    public function getById($CompanyId)
    {
        $query = "SELECT * FROM company WHERE CompanyId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CompanyId));

        if ($stmt->rowCount()) {
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            $image = new Image($this->conn);
            $config = new Config($this->conn);
            $images = $image->getParentIdById($CompanyId);
            $bankings = $config->getCampanyByIdAndType($CompanyId,'bank');
            $address = $config->getCampanyByIdAndType($CompanyId,'address');
            $colors = $config->getCampanyByIdAndType($CompanyId,'logocolors');
            $result["Images"] = $images;
            $result["Bankings"] = $bankings;
            $result["Address"] = $address;
            $result["Colors"] = $colors;
            return $result;
        }
    }
}
