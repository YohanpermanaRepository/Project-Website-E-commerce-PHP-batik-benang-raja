<style>
	body{

	}
	
.menu{
	background-color: brown;
	padding: 20px;

}
.panel1{
	text-align: center;
	overflow: hidden;
    padding: 0px;
	max-height: 35px;
	min-height: 35px;
	max-width: 70px;
	min-width: 70px;
}
.menu-a a{
	color: white;	
}


</style>
<div class="menu">
<a class="navbar-brand" href="index.php">
	<img src="9.png" width="200px" height="80px">
	<font face="Embassy BT" color="red" size="6"></font></a>
	<div class="menu-a">
	<div class="container">

		<ul class="nav navbar-nav">
			<li><a href="index.php">Home</a></li>
			<li><a href="keranjang.php">Keranjang</a></li>

			<?php if (isset($_SESSION["pelanggan"])): ?>
				<li><a href="riwayat.php">Riwayat</a></li>
                <li><a href="logout.php">Logout</a></li>
            <?php else: ?>
			    <li><a href="login.php">Login</a></li>
			    <li><a href="daftar.php">Daftar</a></li>
            <?php endif ?>

			<li><a href="checkout.php">Checkout</a></li>
		</ul>
		<form action="pencarian.php" method="get" class="navbar-form navbar-right">
			<input type="text" class="form-control" name="keyword" placeholder="Band / Artist">
			<button class="btn btn-primary">Cari</button>
		</form>
	</div>
	</div>
</nav>
</div>