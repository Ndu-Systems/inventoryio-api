<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$data = json_decode(file_get_contents("php://input"));


$EmailType = $data->EmailType;
$CompanyName = $data->CompanyName;
$Email = $data->Email;
$ContactNumber = $data->ContactNumber;
$Subject = $data->Subject;
$Message = $data->Message;

$msg = "
<div style='background-color:#F5F6FA;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;height:55rem;'>
        <div style='height:50px;background-color:#104CE5;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;padding-top:0;padding-bottom:0;padding-right:5rem;padding-left:5rem;'>
            <h1 style='font-weight:500;text-transform:capitalize;color:#F5F6FA;font-size:25px;'>inventory io</h1>
        </div>
        <div style='padding-top:0;padding-bottom:0;padding-right:5rem;padding-left:5rem;'>
            <h1 style='font-weight:500;text-transform:capitalize;font-size:25px;color:#3F3D56;'>"
                .$EmailType.
                "</h1>
            <div style='display:grid;grid-template-columns:15% auto;width:50%;'>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>
                    company:
                </h1>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>"
                    .$CompanyName.
                    "</h1>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>
                    From:
                </h1>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>"
                    .$Email.
                    "</h1>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>
                    Contact #:
                </h1>
                <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:15px;'>"
                    .$ContactNumber.
                    "</h1>
            </div>
            <div style='background-color:#fff;background-image:none;background-repeat:repeat;background-position:top left;background-attachment:scroll;min-height:20rem;padding-top:1rem;padding-bottom:1rem;padding-right:3rem;padding-left:3rem;height:30rem;overflow-y:scroll;'>
                <h1 style='text-transform:capitalize;color:#3F3D56;font-size:20px;font-weight:bold;'>".$Subject."</h1>
                <p>"
                .$Message.
                "</p>
            </div>
            <h1 style='font-weight:500;text-transform:capitalize;color:#3F3D56;font-size:20px;'>inventoryio ©2019</h1>
        </div>
    </div>
";

$to = "mrnnmthembu@gmail.com ,Freedom.Khanyile1@gmail.com";
$subject = $EmailType . ' ' . $Subject;
$from = $Email;

$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

$headers .= 'From: ' . $from . "\r\n" .
    'Reply-To: ' . $from . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

if (isset($Email)) {
    if (mail($to, $subject, $msg, $headers)) {
        echo 1;
    } else {
        echo 0;
    }
} else {
    echo 3;
}
