<?php
include_once 'Users.php';

class Account 
{
    
    //DB Stuff
    private $conn;
    public function __construct($db)
    {
        $this->conn = $db;
    }
    // included models extended.   
    public function ForgotPasswordGenerateToken($Email)
    {
        $user  = new Users($this->conn);
        if($user->getByEmail($Email) > 0) {
            $token = bin2hex(openssl_random_pseudo_bytes(16));
            $query = "UPDATE users SET SecurityToken = ? where Email = ?";
            // do the magic
            try {
                $stmt = $this->conn->prepare($query);
                if($stmt->execute(array(
                    $token,
                    $Email
                ))) {
                    return 1;
                }
                else {
                    return "server error, contact system admin.";
                }
            }catch (Exception $e) {
                return array("ERROR", $e);
            }
        } else {
            return "the entered username/email does not match";
        }        
    }

    public function ChangePassword(
        $Email, 
        $Password)
    {
        $user  = new Users($this->conn);        
        if($user->getByEmail($Email) > 0) {
            $query = "UPDATE users SET Password = ?, SecurityToken = ?  where Email = ?";
            try {
                $stmt = $this->conn->prepare($query);
                if($stmt->execute(array(
                    $Password,
                    null,
                    $Email
                ))){
                    return 1;
                }else {
                    return "server error, contact system admin.";
                }
            }catch (Exception $e) {
                return array("ERROR", $e);
            }
        }else {
            return "this request is forbidden";
        }
    }
}