<?php
    //pengambilan data pada database
    include "koneksi.php";
    //percabangan jika terdapat data maka akan dieksekusi
    if(!empty($_GET['cari'])){
        //menampilkan isi data table mahasiswa berdasarkan nim yang dicari
        $sql = "SELECT * FROM mahasiswa WHERE nim like '%" . $_GET['cari'] . "%'";
    } else {
        //menampilkan semua data yang terdapat di table mahasiswa
        $sql = "SELECT * FROM mahasiswa";
    }
    //menjalankan query
    $query = mysqli_query($con,$sql);
    //memasukkan setiap baris data ke dalam array $data
    while ($row = mysqli_fetch_assoc($query)) {
        $data[] = $row;
    }
    //deklarasi json
    header('content-type: application/json');
    //pembuatan json
    echo json_encode($data);
    //menutup koneksi
    mysqli_close($con);
?>