<?php
// koneksi ke DB & pilih Db
$conn = mysqli_connect('localhost', 'root', '', 'db_2020');

// queri isi tabel mahasiswa

$result = mysqli_query($conn, "SELECT * FROM mahasiswa");
// $row = mysqli_fetch_row($result); ///array numeric 
// $row = mysqli_fetch_assoc($result); /// array assosiasi 
// $row = mysqli_fetch_array($result); /// array gabungan 

while ($row = mysqli_fetch_assoc($result)) {
  echo $row['nama'];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <h3>Daftar Mahasiswa</h3>

  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>#</th>
      <th>Gambar</th>
      <th>NRP</th>
      <th>Nama</th>
      <th>Email</th>
      <th>Jurusan</th>
      <th>Aksi</th>
    </tr>

    <tr>
      <td>1</td>
      <td><img src="img/3x4 aja.jpg" alt=""></td>
      <td>1808048031</td>
      <td>Hajar Akbar</td>
      <td>hajarakbar@gmail.com</td>
      <td>Teknik Informatika</td>
      <td><a href="">ubah</a> | <a href="">Hapus</a>
      </td>
    </tr>

  </table>
</body>

</html>