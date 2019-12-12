<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');

if (!empty($_POST)){

    // $CompanyName = $data->CompanyName;
    // $Email = $data->Email;
    // $ContactNumber = $data->ContactNumber;
    // $Subject = $data->Subject;
    // $Message = $data->Message;
    // $DownloadLink = $data->DownloadLink;
    // $InvoiceDate = $data->InvoiceDate;

    $CompanyName = $_POST['CompanyName'];
    $Email = $_POST['Email'];
    $ContactNumber = $_POST['ContactNumber'];
    $Subject = $_POST['Subject'];
    $Message = $_POST['Message'];
    $DownloadLink = $_POST['DownloadLink'];
    $InvoiceDate = $_POST['InvoiceDate'];

    $msg = '
<body style="font-family: "Calibri";">
    <div class="main" style="background: #fff;padding: 4rem 6rem;">
        <div class="box" style="background: #F5F6FA;padding: 0;">
            <div class="header" style="background: #104CE5;padding: 2rem;">
                <h1 style="text-align: center;color: #fff;font-size: 1.5rem;">
                    YOUR INVOICE IS HERE
                    <span style="display: block;font-size: 1rem;">' .
        $InvoiceDate
        . '</span>
                </h1>
            </div>

            <div class="body" style="padding: 4rem 6rem;">
                <p>
                    Dear Ndumiso
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

    $to = $Email . ", mrnnmthembu@gmail.com ,Freedom.Khanyile1@gmail.com";
    $subject =  $Subject;
    $from = 'invoicing@inventoryio.co.za';

    $headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    $headers .= 'From: ' . $CompanyName . "\r\n" .
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
