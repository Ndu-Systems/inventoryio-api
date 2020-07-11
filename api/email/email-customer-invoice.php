<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$data = json_decode(file_get_contents("php://input"));
if (isset($data)){

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
                    YOUR INVOICE IS HERE
                    <span style="display: block;font-size: 1rem;">' .
                        $InvoiceDate
                        . '</span>
                </h1>
            </div>

            <div class="body" style="padding: 5%;">
                <p>
                    Dear '. $Customer.'
                </p>

                <p>
                    Thank you for visiting us and making your purchase. We’re glad
                    that you found what you were looking for
                </p>

                <p>
                    Please click the download button bellow to download your invoice
                </p>

                <a href="' . $DownloadLink . '" style="background: #104CE5;color: #fff;text-decoration: none;padding: .5rem 1rem;">Download</a>

                <p>
                    Yours faithfully <br> ' . $CompanyName . '</p>
            </div>

        </div>
    </div>
</body>

';

    $to = $Email . ", mrnnmthembu@gmail.com ,ndu.systems@gmail.com";
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
