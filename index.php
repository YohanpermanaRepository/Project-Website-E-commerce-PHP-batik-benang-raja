<?php 
session_start();
include 'koneksi.php';
 ?>

 <!DOCTYPE html>
<html>
<head>
	<title>Batik Benang Raja Surabaya</title>
	<link rel="stylesheet" href="admin/assets/css/bootstrap.css">
	<link rel="shortcut icon" href="3.png">
<style>
	body{
	color: black;
    background: #feffff;
    background-size: cover;
    background-attachment: fixed;
	}
.panel{
	text-align: center;
	overflow: hidden;
	padding: 0px;
	max-height: 260px;
	min-height: 260px;
	max-width: 250px;
	min-width: 250px;
}
.nav>li>a:hover,
.nav>li>a:focus {
  text-decoration: none;
  background-color: #900000;
}
</style>
</head>
<body>

<?php include 'menu.php';?>

<section class="konten">
	<div class="container">
		<h2>Produk</h2>

		<div class="row">
        <?php $ambil = $koneksi->query("SELECT * FROM produk"); ?>
        <?php while($perproduk = $ambil->fetch_assoc()){ ?>

			<div class="col-md-3">
				<div class="thumbnail">
					<div class="panel">
				<a href="detail.php?id=<?php echo $perproduk["id_produk"]; ?>">
					<img src="foto_produk/<?php echo $perproduk['foto_produk']; ?>" width="250" height="260" alt="">
				</a>
				    </div>
					<div class="caption">
						<h3><?php echo $perproduk['nama_produk'];  ?></h3>
						<h5>Rp. <?php echo number_format($perproduk['harga_produk']); ?></h5>
						<a href="beli.php?id=<?php echo $perproduk['id_produk']  ?>" class="btn btn-primary">Beli</a>
						<a href="detail.php?id=<?php echo $perproduk["id_produk"]; ?>" class="btn btn-default">Detail</a>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</section>

<?php include 'footer.php'?>

</body>
</html>