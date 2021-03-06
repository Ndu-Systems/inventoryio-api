<?php
require('../../../config/dbInvoice.php');
require('../../../models/Partner.php');
require('../../../models/Order_products.php');
require('../../../models/Company.php');
require('../../../models/Creditnote.php');
// require('../../../models/Config.php');
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
    $order_charges = new Config($db);
    $creditnote = new Creditnote($db);




    if ($stmt->rowCount()) {
        $order =  $stmt->fetch(PDO::FETCH_ASSOC);
        $customer = $partner->getById($order["ParntersId"]);
        $products = $order_products->getBOrderIdId(
            $OrdersId
        );
        $charges = $order_charges->getCampanyByIdAndType($OrdersId, 'shippingFee');
        $creditnotes = $creditnote->getByOrderId($order["OrdersId"]);


        $order["Customer"] = $customer;
        $order["Products"] = $products;
        $order["Company"] = $company->getById($order["CompanyId"]);
        $order["CardClass"] = ['card'];
        $order["Charges"] = $charges;
        $order["Creditnotes"] = $creditnotes;


        $ordersWithCustomers = $order;
    }
    return $ordersWithCustomers;
}

function getOptionsString($options)
{
    $result = '';
    $index = 0;
    if (!$options) {
        return $result;
    }
    foreach ($options as $option) {
        $result = $result . $option['OptionName'] . ' : ' . $option['OptionValue'];

        if ($index < count($options) - 1) {
            $result =  $result . ' , ';
        }
        $index = $index + 1;
    }

    return $result;
}

// values
$OrdersId = $_GET['guid'];

$order = getDetailedSingleCampanyById($OrdersId, $db);
$company = $order["Company"];
$charges = $order["Charges"];
$creditnotes = $order["Creditnotes"];
$prefix = 'CN';
$prefixInvoice = 'INV';
$heading = 'Credit Note';
$invoiceNo =  $prefixInvoice . $order["OrderId"];
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
$PaymentReference = 'Credit note';

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
$fontSizeSmall = 9;
$fontSizeMed = 10;
$fontSizeLarge = 12;

class PDF extends FPDF
{
    function Header()
    {
    }
    function Footer()
    {
        $this->Image('img/footer.png', 0, 275, 210);
        // $this->Image('img/Path 6.png',0,250,210);
        $footerY = 5;
        $this->SetY(-18);
        $this->SetFont('Arial', '', 8);
        $this->Cell(120, $footerY, 'Thank you for shopping with us', 0, 0);
        // $this->Cell(70, $footerY, 'This invoice created using INVENTORYIO', 0, 1);
        // $this->Cell(120, $footerY, 'Please call again', 0, 0);
        // $this->Cell(70, $footerY, 'To create yours vistit:   https://inventoryio.co.za', 0, 1);
        $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }
}


$pdf = new PDF('p', 'mm', 'A4');
$pdf->AliasNbPages('{nb}');
$pdf->AddPage();
if (!$clientName) {
    $clientName = 'Guest';
}
$pdf->SetTitle($invoiceNo . ' ' . $clientName . ' |  Credit Note');
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
// row top
$rowTopSpaceMiddle = 40;
$firstColSize = 30;
$lastColSize = 60;
$rowHeigth = 5;
$pdf->Ln(15);
$pdf->SetFont('Arial', null, $fontSizeLarge / 2);
$pdf->Cell(100, 5, $billedToLabel, $hideBorder, 0);
$pdf->Cell(30, 8, '', $hideBorder, 0);
$pdf->Cell($lastColSize, 5, 'BILLED BY', $hideBorder, 1);

$pdf->SetFont('Arial', 'BU', $fontSizeLarge);
$pdf->Cell(100, 8, $clientName, $hideBorder, 0);
$pdf->Cell(30, 8, '', $hideBorder, 0);
$pdf->Cell($lastColSize, 8, $companyName, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize, $rowHeigth, 'Invoice No :', $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize * 2,  $rowHeigth, $invoiceNo, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL1, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Date Issued :', $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize * 2,  $rowHeigth, $dateIssued, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL2, $hideBorder, 1);

$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Cridit Note No:', $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize * 2,  $rowHeigth, $prefix . $creditnotes["CreditNoteNo"], $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyAddressL3, $hideBorder, 1);

// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, 'Reason:', $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize * 2,  $rowHeigth,  $creditnotes["Reason"], $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, '', $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyCell, $hideBorder, 1);
// row  top
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
$pdf->Cell($firstColSize,  $rowHeigth, null, $hideBorder, 0);
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$pdf->Cell($firstColSize * 2,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($rowTopSpaceMiddle,  $rowHeigth, null, $hideBorder, 0);
$pdf->Cell($lastColSize,  $rowHeigth, $companyEmail, $hideBorder, 1);




// add details headers
$headeCellWidth = 47;
$pdf->Ln(10);
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
// $pdf->SetFillColor(192, 192, 192); rgb(189, 195, 199)
$pdf->SetFillColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->SetTextColor($ftColorsArray[0], $ftColorsArray[1], $ftColorsArray[2]);

$pdf->Cell($headeCellWidth * 2.5,  10, 'DESCRIPTION', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth / 1.5,  10, 'UNIT PRICE', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth / 2.5,  10, 'QTY', $hideBorder, 0, null, true);
$pdf->Cell($headeCellWidth / 2,  10, 'TOTAL', $hideBorder, 1, null, true);
$pdf->SetTextColor(0, 0, 0);

$pdf->SetFillColor(236, 240, 241);
$pdf->Cell(191.111,  4, '', $hideBorder, 1, null, true);
// add list of products
$pdf->SetFont('Arial', null, $fontSizeMed); // value small
$rowCount = 1;
$dataCellHeigt = 5;

foreach ($order["Products"] as $product) {
    $pdf->SetFillColor(236, 240, 241);
    $pdf->SetFont('Arial', null, $fontSizeMed); // value small


    $pdf->Cell($headeCellWidth * 2.5, $dataCellHeigt,  $product["ProductName"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 1.5,  $dataCellHeigt, $currency . $product["UnitPrice"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 2.5,  $dataCellHeigt,  '-' . $product["Quantity"], $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 2,  $dataCellHeigt,  '-' . $currency . $product["subTotal"], $hideBorder, 1, null, true);


    $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
    $pdf->Cell($headeCellWidth * 2.5, 5, getOptionsString($product["Options"]), $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 1.5,  5, '', $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 2.5,  5, '', $hideBorder, 0, null, true);
    $pdf->Cell($headeCellWidth / 2,  5, '', $hideBorder, 1, null, true);

    $pdf->Cell(191.111,  4, '', $hideBorder, 1, null, true);

    $rowCount = $rowCount + 1;
}
// total 
$pdf->SetFont('Arial', 'B', $fontSizeMed * 1.5); // heading small
$pdf->Ln(10);
$pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
$pdf->Cell(107, 10,    'TOTAL: -' . $currency . $order["Total"], $hideBorder, 1, 'L');
$pdf->SetFont('Arial', 'B', $fontSizeMed); // heading small
if ($charges) {
    foreach ($charges as $charge) {
        $pdf->Cell(107, 10, $charge["Label"], $hideBorder, 1, 'L');
        $pdf->SetTextColor(0, 0, 0);
    }
}
$pdf->Cell(191.111,  4, '', $hideBorder, 1, null, true);

if ($creditnotes["Notes"]) {
    $pdf->SetFont('Arial', 'B', $fontSizeMed);
    $pdf->Cell(191.111,  7,  'Notes', $hideBorder, 1, null, true);
    $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
    $pdf->Cell(191.111,  10,  $creditnotes["Notes"], $hideBorder, 1, null, true);
}


// $pdf->SetTextColor(0, 0, 0);
// $headeCellWidth = 62;
// $lineHeight = 5;
// $pdf->Ln(10);
// $pdf->SetFont('Arial', 'B', $fontSizeMed); 
// $pdf->Cell($headeCellWidth * 1.40,  10, $bankingHeadingLabel, $hideBorder, 0);
// $pdf->Cell($headeCellWidth * 0.88,  10, $dueByLabel, $hideBorder, 0);
// $pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
// $pdf->Cell($headeCellWidth,  10, 'TOTAL DUE', $hideBorder, 1);
// $pdf->SetTextColor(0, 0, 0);

// $headeCellWidth = 55;
// $bankLabelFraction = 0.58;

// $pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
// $pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $accountNumberLabel, $hideBorder, 0);
// $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
// $pdf->Cell($headeCellWidth,  $lineHeight, $accountNumber, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);

// $pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
// $pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $bankNameLabel, $hideBorder, 0);
// $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
// $pdf->Cell($headeCellWidth,  $lineHeight, $bankName, $hideBorder, 0);
// $pdf->SetFont('Arial', 'B', 18);
// // $pdf->SetTextColor(0, 204, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, $dueDate, $hideBorder, 0);
// $pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);

// $pdf->Cell($headeCellWidth,  $lineHeight, $currency . $order["Due"], $hideBorder, 1);
// $pdf->SetTextColor(0, 0, 0);


// $pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
// $pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $accountHolderLabel, $hideBorder, 0);
// $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
// $pdf->Cell($headeCellWidth,  $lineHeight, $accountHolder, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);



// $pdf->SetFont('Arial', 'I', 10);
// $pdf->SetTextColor($bgColorsArray[0], $bgColorsArray[1], $bgColorsArray[2]);
// $pdf->Cell($headeCellWidth,  $lineHeight,  'Amount Paid: ' . $currency . $order["Paid"], $hideBorder, 1);
// $pdf->SetTextColor(0, 0, 0);

// $pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
// $pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $branchCodeLabel, $hideBorder, 0);
// $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
// $pdf->Cell($headeCellWidth,  $lineHeight, $branchCode, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);

// $pdf->SetFont('Arial', 'B', $fontSizeSmall); // heading small
// $pdf->Cell($headeCellWidth * $bankLabelFraction,  $lineHeight, $referenceLabel, $hideBorder, 0);
// $pdf->SetFont('Arial', null, $fontSizeSmall); // value small
// $pdf->Cell($headeCellWidth,  $lineHeight, $PaymentReference, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 0);
// $pdf->Cell($headeCellWidth,  $lineHeight, null, $hideBorder, 1);



$docNote = $invoiceNo . ' ' . $clientName . ' Credit Note';
$pdf->Output('', $docNote . '.pdf', false);
