<html>
    <head>
        <style>
            .error {color: #F00000;}
        </style>
    </head>
    <body>
        <a href="index.php">Go to Home</a>
        <br/><br/>
        <?php
        // define variables and set to empty values
        $nimErr = $namaErr = $jkelErr = $alamatErr = $tgllhrErr = "";
        $nim = $nama = $jkel = $alamat = $tgllhr = "";
        
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (empty($_POST["nim"])) {
                $nimErr = "NIM harus diisi";
            }else {
                $nim = test_input($_POST["nim"]);
            }
            
            if (empty($_POST["nama"])) {
                $namaErr = "nama harus diisi";
            }else {
                $nama = test_input($_POST["nama"]);
            }
            
            if (empty($_POST["jkel"])) {
                $jkelErr = "gender harus diisi";
            }else {
                $jkel = test_input($_POST["jkel"]);
            }
            
            if (empty($_POST["alamat"])) {
                $alamatErr = "Alamat harus diisi";
            }else {
                $alamat = test_input($_POST["alamat"]);
            }
            
            if (empty($_POST["tgllhr"])) {
                $tgllhrErr = "Tanggal harus diisi";
            }else {
                $tgllhr = test_input($_POST["tgllhr"]);
            }
        }
        
        function test_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
        ?>
        <h2>Tambah Data</h2>

        <p><span class = "error">* Harus Diisi.</span></p>

        <form name="form1" method = "post" action = "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >
            <table>
                <tr>
                    <td>NIM:</td>
                    <td><input type = "text" name = "nim">
                    <span class = "error">* <?php echo $nimErr;?></span>
                    </td>
                </tr>

                <tr>
                    <td>Nama: </td>
                    <td><input type = "text" name = "nama">
                    <span class = "error">* <?php echo $namaErr;?></span>
                    </td>
                </tr>
                
                <tr>
                    <td>Gender:</td>
                    <td>
                    <input type = "radio" name = "jkel" value = "L">Laki-Laki
                    <input type = "radio" name = "jkel" value = "P">Perempuan
                    <span class = "error">* <?php echo $jkelErr;?></span>
                    </td>
                </tr>

                <tr>
                    <td>Alamat:</td>
                    <td><input type="text" name="alamat"></td>
                </tr>
                
                <tr>
                    <td>Tgl Lahir:</td>
                    <td><input type="text" name="tgllhr"></td>
                </tr>
                <td>
                    <input type = "submit" name = "Submit" value = "Tambah"> 
                </td>
            </table>
        </form>
        
        <?php
        // Check If form submitted, insert form data into users table.
        if(isset($_POST['Submit'])) 
        {
            $nim = $_POST['nim'];
            $nama = $_POST['nama'];
            $jkel = $_POST['jkel'];
            $alamat = $_POST['alamat'];
            $tgllhr = $_POST['tgllhr'];
            // include database connection file
            include_once("koneksi.php");

            // Insert user data into table
            $result = mysqli_query($con, "INSERT INTO mahasiswa(nim,nama,jkel,alamat,tgllhr) 
            VALUES('$nim','$nama', '$jkel','$alamat','$tgllhr')");
            
            // Show message when user added
            echo "Data berhasil disimpan. <a href='index.php'>View Users</a>";
        }
        ?>
        
    </body>
</html>