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
$OrdersId= '0c4c3f54-22f8-11ea-bb26-48f17f8d4d88';
$order = getDetailedSingleCampanyById($OrdersId, $db);
$company = $order["Company"];
$prefix = 'INV';
$heading = 'Invoice';
$clientName = 'SADMA SA';
$dateIssued = '12 Dec 2019';
$dueBy = '09 Jan 2020';
$invoiceNo =  $prefix.$order["OrderId"];
$companyName = $company["Name"];
$companyCell = $company["TelephoneNumber"];
$companyEmail = 'info@dell.co.za';
$companyAddressL1 = 'The Campus, Wembley Building';
$companyAddressL2 = '57 Sloane St &, Main Rd, Bryanston, 2021';
$currency = 'R ';

$accountNumber = '62737294455';
$bankName = 'FNB';
$accountHolder = 'Ndu Systems';
$PaymentReference = $clientName.$invoiceNo;
$branchCode = '254005';

$hideBorder = 0;
$fontSizeSmall = 10;
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
$pdf->Cell($headeCellWidth,  10, 'TOTAL', $hideBorder, 1);


// add list of products
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
foreach ($order["Products"] as $product) {
    $pdf->Cell($headeCellWidth,  10,  $product["ProductName"], $hideBorder, 0);
    $pdf->Cell($headeCellWidth,  10, $currency.$product["UnitPrice"], $hideBorder, 0);
    $pdf->Cell($headeCellWidth,  10,  $product["Quantity"], $hideBorder, 0);
    $pdf->Cell($headeCellWidth,  10,  $currency.$product["subTotal"], $hideBorder, 1);
}
// total 
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell(141, 10, 'TOTAL', $hideBorder, 0);
$pdf->Cell(47, 10,  $currency.$order["Total"], $hideBorder, 1);


$pdf->Image('img/footer.png',0,210,210);

// add details headers
$headeCellWidth = 62;
$lineHeight = 5;
$pdf->Ln(80);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($headeCellWidth*1.40,  10, 'BANK INFO', $hideBorder, 0);
$pdf->Cell($headeCellWidth*0.88,  10, 'DUE BY', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'TOTAL DUE', $hideBorder, 1);

$headeCellWidth = 55;
$bankLabelFraction = 0.58;

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth*$bankLabelFraction,  $lineHeight, 'Account No :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountNumber, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth*$bankLabelFraction,  $lineHeight, 'Bank Name :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $bankName, $hideBorder, 0);
$pdf->SetFont('Arial', '', 18);
$pdf->Cell($headeCellWidth,  $lineHeight, $dueBy, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight,$currency.$order["Total"], $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth*$bankLabelFraction,  $lineHeight, 'Account Holder :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountHolder, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth*$bankLabelFraction,  $lineHeight, 'Branch Code : ', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $branchCode, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth*$bankLabelFraction,  $lineHeight, 'Reference :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $PaymentReference, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);




$pdf->Output();



