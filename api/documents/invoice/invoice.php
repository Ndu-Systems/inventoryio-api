<?php
require('../../../config/dbInvoice.php');
require('../../../models/Partner.php');
require('../../../models/Order_products.php');
require('../../../models/Company.php');
require('inc/fpdf.php');
// connect to db
//connect to db
$database = new Database();
$db = $database->connect();

function getDetailedSingleCampanyById($OrdersId, $db)
{
    $query = "SELECT * FROM orders WHERE OrdersId =?";

    $stmt = $db->prepare($query);
    $stmt->execute(array($OrdersId));
    $ordersWithCustomers = null;
    $partner = new Partner($db);
    $order_products = new Order_products($db);
    $company = new Company($db);


    if ($stmt->rowCount()) {
        $order =  $stmt->fetch(PDO::FETCH_ASSOC);
        $customer = $partner->getById($order["ParntersId"]);
        $products = $order_products->getBOrderIdId(
            $OrdersId
        );
        $order["Customer"] = $customer;
        $order["Products"] = $products;
        $order["Company"] = $company->getById($order["CompanyId"]);
        $order["CardClass"] = ['card'];
        $ordersWithCustomers = $order;
    }
    return $ordersWithCustomers;
}

// values
$heading = 'Invoice';
$heading = 'Invoice';
$clientName = 'SADMA SA';
$dateIssued = '12 Dec 2019';
$invoiceNo = '1236';
$companyName = 'Dell South Africa';
$companyCell = '011 224 1454';
$companyEmail = 'info@dell.co.za';
$companyAddressL1 = 'The Campus, Wembley Building';
$companyAddressL2 = '57 Sloane St &, Main Rd, Bryanston, 2021';

$hideBorder = 1;
$fontSizeMed = 12;
$fontSizeLarge = 16;


$pdf = new FPDF('p', 'mm', 'A4');
$pdf->AddPage();

// add logo and heading
$pdf->Image('img/Ellipse 1.png', 10, 25, 20);
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', 30);
$pdf->Cell(30, 10, '', $hideBorder, 0);
$pdf->Cell(100, 10, $heading, $hideBorder, 1);

// add client details and company
$pdf->Ln(30);
$pdf->SetFont('Arial', '', $fontSizeLarge);
$pdf->Cell(85, 10, $clientName, $hideBorder, 1);
// row top
$rowTopSpaceMiddle = 40;
$firstColSize = 30;
$lastColSize = 90;
$rowHeigth = 5;
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize, $rowHeigth, 'Date Issued :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $dateIssued, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyName, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Invoice No :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $invoiceNo, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL1, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, '', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL2, $hideBorder, 1);


// add details headers
$headeCellWidth = 47;
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($headeCellWidth,  10, 'DESCRIPTION', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'UNIT PRICE', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'QUANTITY', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'TOTAL', $hideBorder, 0);

$orders = getDetailedSingleCampanyById('', $db);







$pdf->SetFont('Arial', 'B', 30);
// Cell(w,h, context, border, newline, [align])
// $pdf->Cell()
$pdf->Output();



