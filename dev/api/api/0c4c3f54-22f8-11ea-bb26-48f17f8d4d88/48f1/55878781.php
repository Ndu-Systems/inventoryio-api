<?php
require('../../../config/dbInvoice.php');
require('../../../models/Partner.php');
require('../../../models/Quotation_products.php');
require('../../../models/Company.php');
require('inc/fpdf.php');
// connect to db
//connect to db
$database = new Database();
$db = $database->connect();

function getDetailedSingleCampanyById($OrdersId, $db)
{
    $query = "SELECT * FROM quotation WHERE QuotationId =?";

    $stmt = $db->prepare($query);
    $stmt->execute(array($OrdersId));
    $ordersWithCustomers = null;
    $partner = new Partner($db);
    $quotation_products = new Quotation_products($db);
    $company = new Company($db);


    if ($stmt->rowCount()) {
        $order =  $stmt->fetch(PDO::FETCH_ASSOC);
        $customer = $partner->getById($order["ParntersId"]);
        $products = $quotation_products->getBQuotationId(
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
$prefix = 'QT';
$heading = 'Quotation';
$invoiceNo =  $prefix . $order["QuoteId"];
$companyName = $company["Name"];
$currency = 'R ';

// customer 
$billedToLabel = null;
$clientName = '';
$customer = $order["Customer"];
if (isset($customer['Name'])) {
    $clientName = $customer['Name'];
    $billedToLabel = 'BILLED TO';
}
$dateIssued = date('d M Y', strtotime($order["CreateDate"]));

// company address details
$addressDetials = $company["Address"];
$companyAddressL1 = null;
$companyAddressL2 = null;
$companyAddressL3 = null;
$companyCell = null;
$companyEmail = null;
if (isset($addressDetials)) {
    $companyAddressL1 = $addressDetials[0]["Value"];
    $companyAddressL2 = $addressDetials[1]["Value"];
    $companyAddressL3 = $addressDetials[2]["Value"];
    $companyCell = $addressDetials[3]["Value"];
    $companyEmail = $addressDetials[4]["Value"];
}

// company banking details
$bankName = null;
$accountNumber = null;
$branchCode = null;
$accountHolder = null;
$bankDetials = $company["Bankings"];

$bankingHeadingLabel = null;
$accountNumberLabel = null;
$bankNameLabel =  null;
$branchCodeLabel = null;
$accountHolderLabel =  null;
$referenceLabel =  null;
$PaymentReference = 'invoice';

if (isset($bankDetials)) {
    $bankName = $bankDetials[0]["Value"];
    $accountNumber = $bankDetials[1]["Value"];
    $branchCode = $bankDetials[2]["Value"];
    $accountHolder = $bankDetials[3]["Value"];
    $PaymentReference = $clientName . $invoiceNo;


    $bankingHeadingLabel = "BANK INFO";
    $accountNumberLabel = "Bank Name :";
    $bankNameLabel = "Account No :";
    $branchCodeLabel = "Branch Code :";
    $accountHolderLabel = "Account Holder :";
    $referenceLabel = "Reference :";
}
// colors  details
$bankColors = $company["Colors"];
$bgColors = "189,195,199";
$ftColors = "0,0,0";
if (isset($bankColors)) {
    $bgColors = $bankColors[0]["Value"];
    $ftColors = $bankColors[1]["Value"];
}
$bgColorsArray = explode(",", $bgColors);
$ftColorsArray = explode(",", $ftColors);

//Logo Url
$image = $company["Images"];
$logoUrl = null;
if (isset($image)) {
    //$logoUrl = $image[0]["Url"];
    $logoUrl  =  '../../' . explode("api", $image[0]["Url"])[2];
}

$dueDate = null;
$dueDateLabel = null;
$dueByLabel = null;
if (isset($order["ExpectedDate"])) {
    $dueDate = date('d M Y', strtotime($order["ExpectedDate"]));
    $dueDateLabel = 'Due date :';
    $dueByLabel = 'DUE BY';
}






$hideBorder = 0;
$fontSizeSmall = 10;
$fontSizeMed = 12;
$fontSizeLarge = 14;

class PDF extends FPDF
{
    function Header()
    {
    }
    function Footer()
    {
        $this->Image('img/footer.png',0,275,210);
        // $this->Image('img/Path 6.png',0,250,210);
        $footerY= 5;
        $this->SetY(-18);
        $this->SetFont('Arial', '', 8);
        $this->Cell(120, $footerY, 'Thank you for shoppinmg with us', 0, 0);
        $this->Cell(70, $footerY, 'This invoice created using INVENTORYIO', 0, 1);
        $this->Cell(120, $footerY, 'Please call again', 0, 0);
        $this->Cell(70, $footerY, 'To create yours vistit:   https://inventoryio.co.za', 0, 1);
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');

    }
}


$pdf = new PDF('p', 'mm', 'A4');
$pdf->AliasNbPages('{nb}');
$pdf->AddPage();
if (isset($logoUrl)) {
    $pdf->Image($logoUrl, 10, 25, 25);
}
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', 30);
$pdf->Cell(60, 10, null, $hideBorder, 0);
$pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->Cell(100, 10, $heading, $hideBorder, 1);
$pdf->SetTextColor(0, 0, 0);


// add client details and company
$pdf->Ln(15);
$pdf->SetFont('Arial', null, $fontSizeLarge / 2);
$pdf->Cell(100, 5, $billedToLabel, $hideBorder, 0);
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
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $invoiceNo, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL1, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Date Issued :', $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $dateIssued, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL2, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, null, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL3, $hideBorder, 1);

// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, $dueDateLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, $dueDate, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyCell, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, null, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyEmail, $hideBorder, 1);


// add details headers
$headeCellWidth = 47;
$pdf->Ln(20);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
// $pdf->SetFillColor(192, 192, 192); rgb(189, 195, 199)
$pdf->SetFillColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->SetTextColor($ftColorsArray[0], $ftColorsArray[1], $ftColorsArray[2]);

$pdf->Cell($headeCellWidth * 1.5,  10, 'DESCRIPTION', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth / 1.5,  10, 'UNIT PRICE', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth / 1.5,  10, 'QUANTITY', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth,  10, 'TOTAL', $hideBorder, 1, null, true);
$pdf->SetTextColor(0, 0, 0);


// add list of products
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$rowCount = 1;
foreach ($order["Products"] as $product) {
    $pdf->SetFillColor(236, 240, 241);

    $pdf->Cell($headeCellWidth * 1.5,  10,  $product["ProductName"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 1.5,  10, $currency . $product["UnitPrice"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 1.5,  10,  $product["Quantity"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth,  10,  $currency . $product["subTotal"], $hideBorder, 1, null, true);
    $rowCount = $rowCount + 1;
}
// total 
$pdf->SetFont('Arial', 'B', $fontSizeMed * 1.5); // heading small
$pdf->Ln(10);
$pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->Cell(107, 10,    'TOTAL: ' . $currency . $order["Total"], $hideBorder, 1, 'L');
$pdf->SetTextColor(0, 0, 0);


// $pdf->Image('img/footer.png', 0, 210, 210);

// add details headers

$headeCellWidth = 62;
$lineHeight = 5;
$pdf->Ln(10);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($headeCellWidth * 1.40,  10, $bankingHeadingLabel, $hideBorder, 0);
$pdf->Cell($headeCellWidth * 0.88,  10, $dueByLabel, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  10, 'TOTAL DUE', $hideBorder, 1);

$headeCellWidth = 55;
$bankLabelFraction = 0.58;

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $accountNumberLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountNumber, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $bankNameLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $bankName, $hideBorder, 0);
$pdf->SetFont('Arial', 'B', 18);
// $pdf->SetTextColor(0, 204, 0);
$pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->Cell($headeCellWidth,  $lineHeight, $dueDate, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, $currency . $order["Total"], $hideBorder, 1);
$pdf->SetTextColor(0, 0, 0);


$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $accountHolderLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $accountHolder, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $branchCodeLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $branchCode, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
$pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $referenceLabel, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeSmall); // value small
$pdf->Cell($headeCellWidth,  $lineHeight, $PaymentReference, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
$pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);




$pdf->Output('',$PaymentReference.'.pdf', false);
