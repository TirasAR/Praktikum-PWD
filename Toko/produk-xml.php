<?php
include "db.php"; 
header('Content-Type: text/xml');
$query = "select * from tb_category INNER JOIN tb_product ON tb_category.category_id = tb_product.category_id";
$hasil = mysqli_query($conn,$query);
$jumField = mysqli_num_fields($hasil);
echo "<?xml version='1.0'?>";
echo "<data>";
while ($data = mysqli_fetch_array($hasil))
{
    echo "<produk>";
    echo"<category_name>",$data['category_name'],"</category_name>";
    echo"<product_name>",$data['product_name'],"</product_name>";
    echo"<product_price>",$data['product_price'],"</product_price>";
    echo "</produk>";
}
echo "</data>";
?>