<header class="header">
    <p>
        <img src="img/logo.png" id="header-logo" alt="Girl in a jacket" width="200" height="100">
    </p>
    <h2 id="logo-text">
        PlantAwesome
    </h2>

    </p>
    <p class="header-cart">
        <a href="index.php">Home</a>
        <a href="cart.php">Cart</a>
        <?php if (isset($_SESSION['UserName'])) { ?>
            <a href="order.php">Order</a>
            <a href="index.php"><?php echo $_SESSION['UserName'] ?></a>
            <a href="log-out.php">Log Out</a>
            <a href="user.php">Account page</a>
        <?php } else { ?>
            <a href="log-in.php">Login</a>
            <a href="create-account.php">Create Account</a>
        <?php } ?>
        <?php if (isset($_SESSION['IsAdmin']) && $_SESSION['IsAdmin'] === 1) { ?>
            <a href="admin.php">Admin</a>
        <?php } ?>
    </p>
</header>