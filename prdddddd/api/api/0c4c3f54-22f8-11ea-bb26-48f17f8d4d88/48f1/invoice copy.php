<?php
//https://www.youtube.com/watch?v=XD8OOSwjMDs
require('inc/fpdf.php');

class PDF extends FPDF
{
// Page header

function Header()
{
    $heading = 'Invoice';
    $clientName = 'SADMA SA';
    $dateIssued = '12 Dec 2019';
    $invoiceNo = '1236';
    $companyName ='Dell South Africa';
    $companyCell ='011 224 1454';
    $companyEmail ='info@dell.co.za';
    $companyAddressL1 ='The Campus, Wembley Building';
    $companyAddressL2 ='57 Sloane St &, Main Rd, Bryanston, 2021';
   
    

    // Logo
    $this->Ln(20);
    $this->Image('img/Ellipse 1.png',10,25,20);
    //$this->Image('img/banner.png',0,10,210);
    $this->Image('img/footer.png',0,210,210);
    // Arial bold 15
    $this->SetFont('Arial','B',30);
    
    //$this->SetTextColor(220,50,50);
    $this->Cell(30);
    $this->Cell(30,10,$heading);

    $this->SetFont('Arial','',25);
    $this->Cell(-180);
    $this->Cell(10,100,$clientName);

    $this->Cell(-10);
    $this->SetFont('Arial','B',15);
    $this->Cell(0,120,'Date Issued : ');

    $this->Cell(-157);
    $this->SetFont('Arial','',14);
    $this->Cell(0,120, $dateIssued);

    $this->Cell(-190);
    $this->SetFont('Arial','B',15);
    $this->Cell(0,140,'Invoice No : ');

    $this->Cell(-157);
    $this->SetFont('Arial','',14);
    $this->Cell(0,140, $invoiceNo);

    // company
    $companyLeft = -70;

    $this->Cell($companyLeft);
    $this->SetFont('Arial','B',16);
    $this->Cell(0,90,$companyName);

    $this->Cell($companyLeft);
    $this->SetFont('Arial','',10);
    $this->Cell(0,110,$companyAddressL1);
    $this->Cell($companyLeft);
    $this->SetFont('Arial','',10);
    $this->Cell(0,120,$companyAddressL2);

    $this->Cell($companyLeft);
    $this->SetFont('Arial','',12);
    $this->Cell(0,135,$companyCell);
    
    $this->Cell($companyLeft);
    $this->Cell(0,145,$companyEmail);

    //table

    // $tableLeft = -185;
    // $cellWidth = 100;
    // $this->Cell($tableLeft);
    // $this->Cell($cellWidth,10,'Title',1,0,'C');


    
    // Line break
    $this->Ln(90);
  
    $header = array('Country', 'Capital', 'Area (sq km)', 'Pop. (thousands)');
    $this->BasicTable($header,Array());

}

// Page footer
function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Page number
    $this->Cell(0,10,'Page '.$this->PageNo().'/ {nb}',0,0,'C');
}
function BasicTable($header, $data)
{
    // Header
    // $this->setY(120);
    foreach($header as $col)
        $this->Cell(40,7,$col,1);
    $this->Ln();
    // Data
    foreach($data as $row)
    {
        foreach($row as $col)
            $this->Cell(40,6,$col,1);
        $this->Ln();
    }
}
}


// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages('{nb}');
$pdf->AddPage();
$pdf->SetFont('Times','',12);
// for($i=1;$i<=40;$i++)
//     $pdf->Cell(0,10,'Printing line number '.$i,0,1);
$pdf->Output();
?>