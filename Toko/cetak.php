<?php
//menyertakan file fpdf
require('fpdf\fpdf.php');

//membuat objek baru bernama pdf dari class FPDF
//dan melakukan setting kertas l : landscape, A5 : ukuran kertas
$pdf = new FPDF('l','mm','A5');
// membuat halaman baru
$pdf->AddPage();
// menyetel font yang digunakan, font yang digunakan adalah arial, bold dengan ukuran 16
$pdf->SetFont('Arial','B',16);
// judul
$pdf->Cell(190,7,'PRODUK MYCOMP',0,1,'C');
$pdf->SetFont('Arial','B',12);
$pdf->Cell(190,7,'DAFTAR HARGA PRODUK MYCOMP 2022',0,1,'C');
 
// Memberikan space kebawah agar tidak terlalu rapat
$pdf->Cell(10,7,'',0,1);
 
$pdf->SetFont('Arial','B',10);
$pdf->Cell(25,6,'KATEGORI',1,0);
$pdf->Cell(140,6,'NAMA PRODUK',1,0);
$pdf->Cell(27,6,'HARGA',1,1);
 
$pdf->SetFont('Arial','',10);
 
//koneksi ke database
include "db.php";
$no = 1;
$tampil = mysqli_query($conn, "select * from tb_category INNER JOIN tb_product ON tb_category.category_id = tb_product.category_id");
while ($hasil = mysqli_fetch_array($tampil)){
    $pdf->Cell(25,6,$hasil['category_name'],1,0);
    $pdf->Cell(140,6,$hasil['product_name'],1,0);
    $pdf->Cell(27,6,"Rp.".number_format($hasil['product_price']),1,1); 
    
}
 
$pdf->Output();


?>