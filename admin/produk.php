<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<h2>Produk</h2>

<a href="index.php?halaman=tambahproduk" class="btn btn-primary">Tambah Data</a><br><br>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>No.</th>
			<th>Nama</th>
			<th>Harga</th>
			<th>Berat</th>
			<th>Foto</th>
			<th>Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php $nomor = 1; ?>
		<?php $ambil = $koneksi->query("SELECT * FROM produk"); ?>
		<?php while ($pecah = $ambil->fetch_assoc()) { ?>
		<tr>
			<td><?php echo $nomor; ?></td>
			<td><?php echo $pecah['nama_produk']; ?></td>
			<td><?php echo $pecah['harga_produk']; ?></td>
			<td><?php echo $pecah['berat_produk']; ?></td>
			<td><div class="panel-body">
				<center>
				<img src="../foto_produk/<?php echo $pecah['foto_produk']; ?>" width="95" height="100">
			    </center>
			</div>
			</td>
			<td>
				<a href="index.php?halaman=hapusproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn-danger btn">Delete</a>
				<a href="index.php?halaman=ubahproduk&id=<?php echo $pecah['id_produk']; ?>" class="btn btn-warning">Edit</a>
			</td>
		</tr>
	<?php $nomor++; ?>
	<?php
}?>
	</tbody>
</table>

</body>
</html>
