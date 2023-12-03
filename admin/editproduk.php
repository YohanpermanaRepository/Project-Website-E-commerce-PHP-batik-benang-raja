<?php

if (isset($_POST['ubah'])) 
{
	$namafoto = $_FILES['foto']['name'];
	$lokasifoto = $_FILES['foto']['tmp_name'];

	if (!empty($lokasifoto)) {
		move_uploaded_file($lokasifoto, "../foto_produk/$namafoto");

		$koneksi->query("UPDATE produk SET nama_produk='$_POST[nama]',
		harga_produk='$_POST[harga]',berat_produk='$_POST[berat]',
		foto_produk='$_namafoto',deskripsi_produk='$_POST[deskripsi]'
		WHERE id_produk='$_GET[id]'");
	}
	else {
		$koneksi->query("UPDATE produk SET nama_produk='$_POST[nama]',
		harga_produk='$_POST[harga]',berat_produk='$_POST[berat]',
		deskripsi_produk='$_POST[deskripsi]'
		WHERE id_produk='$_GET[id]'");
	}
	echo "<script>alert(Data Produk Telah diubah);</script>";
	echo "<script>location='index.php?halaman=produk';</script>";
}
?>