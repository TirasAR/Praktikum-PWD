<?php
    //deklarasi variable $search
    $search='NIM';
    //percabangan jika submit diklik maka eksekusi
    if(isset($_POST['submit'])){
        // jika 'cari' kosong tampilkan kata 'NIM' jika ada tampilkan isi dari variable cari
        $search = empty($_POST['cari']) ? 'NIM' : strtoupper($_POST['cari']);
        //mendefinisikan url untuk web service dengan post dari cari
        $url = "https://ramadhanki.000webhostapp.com/getdatamhs.php?cari=" . $_POST['cari'];
        error_reporting(0);
    } else {
        //mendefinisikan url untuk web service
        $url = "https://ramadhanki.000webhostapp.com/getdatamhs.php";
    }
?>
<div>
    <h3>Cari Mahasiswa berdasarkan NIM</h3>
    <!-- membuat form Pencarian dengan method POST -->
    <form action="#" method="POST">
        <!-- input tipe text dengan name cari -->
        <input name='cari' type="text">
        <!-- button Cari dengan name submit --> 
        <button name='submit'> Cari </button>
    </form>
    <h3>Hasil Pencarian : <?=$search?> </h3>
</div>
<?php
    //Buat http request ke url web service
    $client = curl_init($url);
    //set option data dikembalikan
    curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
    //curl akan melakukan HTTP Request sesuai dengan options yang diberikan
    $response = curl_exec($client);
    //pembuatan json
    $result = json_decode($response);
    //menampilkan data yang didapatkan
    foreach ($result as $r) {
        echo "<p>";
        echo "NIM : " . $r -> nim . "<br />";
        echo "Nama : " . $r -> nama . "<br />";
        echo "jenis kel : " . $r -> jkel . "<br />";
        echo "Alamat : " . $r -> alamat . "<br />";
        echo "Tgl Lahir : " . $r -> tgllhr . "<br />";
        echo "</p>";
    }