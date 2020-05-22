<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$data = json_decode(file_get_contents("php://input"));
if (isset($data)) {

    $CompanyName = $data->CompanyName;
    $Email = $data->Email;
    $ContactNumber = $data->ContactNumber;
    $Subject = $data->Subject;
    $Message = $data->Message;
    $DownloadLink = $data->DownloadLink;
    $InvoiceDate = $data->InvoiceDate;
    $Customer = $data->Customer;



    $msg = '
    <body style="font-family: "Calibri";">
    <div class="main">
        <div class="box" style="padding: 0;background: #F5F6FA;">
            <div class="header" style="background: #104CE5;padding: 2%;">
                <h1 style="text-align: center;color: #fff;font-size: 1.5rem;">
                FORGOT YOUR PASSWORD?
                    <span style="display: block;font-size: 1rem;">Let us get your sorted ASAP</span>
                </h1>
            </div>

            <div class="body" style="padding: 5%;">
                <p>
                    Dear ' . $Customer . '
                </p>

                <p>
                Someone requested a new password for your Inventory-io account. 
                </p>
                <br/>
                <br/>
                <a href="' . $DownloadLink . '" style="background: #104CE5;color: #fff;text-decoration: none;padding: .5rem 1rem;">Reset your password</a>
                <br/>
                <br/>
                <p>
                If you did not make this request then you can safely ignore this email :)
                </p>            
                <p>
                    Yours faithfully <br> Inventory-io team<</p>
            </div>

        </div>
    </div>
</body>

';

    $to = $Email . ", mrnnmthembu@gmail.com ,Freedom.Khanyile1@gmail.com";
    $subject =  $Subject;
    $from = 'invoicing@inventoryio.co.za';

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
}
