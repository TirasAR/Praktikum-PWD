<?php
include "db.php";
$sql="select * from tb_category INNER JOIN tb_product ON tb_category.category_id = tb_product.category_id";
$tampil = mysqli_query($conn,$sql);
if (mysqli_num_rows($tampil) > 0) 
{
    $no=1;
    $response = array();
    $response["data"] = array();
    while ($r = mysqli_fetch_array($tampil)) 
    {
        $h['category_name'] = $r['category_name'];
        $h['product_name'] = $r['product_name'];
        $h['product_price'] = $r['product_price'];
        array_push($response["data"], $h);
    }
    echo json_encode($response);
}
else 
{
    $response["message"]="tidak ada data";
    echo json_encode($response);
}
?>