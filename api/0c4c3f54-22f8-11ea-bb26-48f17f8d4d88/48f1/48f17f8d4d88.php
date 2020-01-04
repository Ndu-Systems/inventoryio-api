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
$OrdersId = $_GET['guid'];
// $OrdersId = 'd0e20298-2ba4-11ea-84fd-48f17f8d4d88';

$order = getDetailedSingleCampanyById($OrdersId, $db);
$company = $order["Company"];
$prefix = 'INV';
$heading = 'Invoice';
$invoiceNo =  $prefix . $order["OrderId"];
$companyName = $company["Name"];
$companyCell = $company["TelephoneNumber"];
$companyEmail = 'info@dell.co.za';
$companyAddressL1 = 'The Campus, Wembley Building';
$companyAddressL2 = '57 Sloane St &, Main Rd, Bryanston, 2021';
$currency = 'R ';

// customer 
$customer = $order["Customer"];
$clientName = $customer['Name'];
$dateIssued = date('d M Y', strtotime($order["CreateDate"]));


$dueDate = '';
$dueDateLabel = '';
$dueByLabel = '';
if (isset($order["ExpectedDate"])) {
    $dueDate = date('d M Y', strtotime($order["ExpectedDate"]));
    $dueDateLabel = 'Due date :';
    $dueByLabel = 'DUE BY';
}





$accountNumber = '62737294455';
$bankName = 'FNB';
$accountHolder = 'Ndu Systems';
$PaymentReference = $clientName . $invoiceNo;
$branchCode = '254005';

$hideBorder = 0;
$fontSizeSmall = 10;
$fontSizeMed = 12;
$fontSizeLarge = 14;


$pdf = new FPDF('p', 'mm', 'A4');
$pdf->AddPage();

// add logo and heading
// $pdf->Image('img/logo.png', 10, 25, 20);
//  $pdf->Image('img/ndu systems dp.png', 10, 25, 20);
$pdf->Image('img/Group 10.png', 10, 25, 25);
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', 30);
$pdf->Cell(60, 10, '', $hideBorder, 0);
$pdf->Cell(100, 10, $heading, $hideBorder, 1);

// add client details and company
$pdf->Ln(15);
$pdf->SetFont('Arial', '', $fontSizeLarge / 2);
$pdf->Cell(100, 5, 'BILLED TO', $hideBorder, 0);
$pdf->Cell(85, 5, 'BILLED BY', $hideBorder, 1);

$pdf->SetFont('Arial', 'BU', $fontSizeLarge);
$pdf->Cell(100, 8, $clientName, $hideBorder, 0);
$pdf->Cell(85, 8, $companyName, $hideBorder, 1);
// row top
$rowTopSpaceMiddle = 40;
$firstColSize = 30;
$lastColSize = 90;
$rowHeigth = 5;
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize, $rowHeigth, 'Invoice No :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $invoiceNo, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL1, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Date Issued :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $dateIssued, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL2, $hideBorder, 1);

// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, $dueDateLabel, $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $dueDate, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyCell, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, '', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyEmail, $hideBorder, 1);


// add details headers
$headeCellWidth = 47;
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
// $pdf->SetFillColor(192, 192, 192); rgb(189, 195, 199)
$pdf->SetFillColor(189, 195, 199);

$pdf->Cell($headeCellWidth,  10, 'DESCRIPTION', $hideBorder, 0, '', true);
$pdf->Cell($headeCellWidth,  10, 'UNIT PRICE', $hideBorder, 0, '', true);
$pdf->Cell($headeCellWidth,  10, 'QUANTITY', $hideBorder, 0, '', true);
$pdf->Cell($headeCellWidth,  10, 'TOTAL', $hideBorder, 1, '', true);


// add list of products
$pdf->SetFont('Arial', '', $fontSizeMed); // value small
$rowCount = 1;
foreach ($order["Products"] as $product) {
    $pdf->SetFillColor(236, 240, 241);

    $pdf->Cell($headeCellWidth,  10,  $product["ProductName"], $hideBorder, 0, '', true);
    $pdf->Cell($headeCellWidth,  10, $currency . $product["UnitPrice"], $hideBorder, 0, '', true);
    $pdf->Cell($headeCellWidth,  10,  $product["Quantity"], $hideBorder, 0, '', true);
    $pdf->Cell($headeCellWidth,  10,  $currency . $product["subTotal"], $hideBorder, 1, '', true);
    $rowCount = $rowCount + 1;
}
// total 
$pdf->SetFont('Arial', 'B', $fontSizeMed * 1.5); // heading small
$pdf->Ln(10);
$pdf->Cell(107, 10,    'TOTAL: ' . $currency . $order["Total"], $hideBorder, 1, 'L');


// $pdf->Image('img/footer.png', 0, 210, 210);

// add details headers
$headeCellWidth = 62;
$lineHeight = 5;
$pdf->Ln(10);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($headeCellWidth * 1.40,  10, 'BANK INFO', $hideBorder, 0);
$pdf->Cell($headeCellWidth * 0.88,  10, $dueByLabel, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'TOTAL DUE', $hideBorder, 1);

$headeCellWidth = 55;
$bankLabelFraction = 0.58;

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, 'Account No :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountNumber, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, 'Bank Name :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $bankName, $hideBorder, 0);
$pdf->SetFont('Arial', 'B', 18);
// $pdf->SetTextColor(0, 204, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, $dueDate, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, $currency . $order["Total"], $hideBorder, 1);
$pdf->SetTextColor(0, 0, 0);


$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, 'Account Holder :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountHolder, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, 'Branch Code : ', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $branchCode, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, 'Reference :', $hideBorder, 0);
$pdf->SetFont('Arial', '', $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $PaymentReference, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, '', $hideBorder, 1);




$pdf->Output();
