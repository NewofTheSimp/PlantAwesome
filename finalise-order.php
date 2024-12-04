<?php
session_start();
include 'config.php';
if ($_SESSION['cart'] && $_SESSION['UserId']) {

    global $pdo;
    $stmt = $pdo->prepare("SELECT userEmail, userName FROM user WHERE Id=?");
    $stmt->execute([$_SESSION['UserId']]);
    $data = $stmt->fetchAll();

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (!empty($_POST['ccnum']) && !empty($_POST['ccexp']) && !empty($_POST['cccarname']) && !empty($_POST['cccvv'])) {
        foreach (($_SESSION['cart']) as $cart) {
            $stmt = $pdo->prepare("INSERT INTO orders (orderUserId, orderItemId) VALUES (?, ?)");
            $stmt->execute([$_SESSION['UserId'], $cart]);
        }
        unset($_SESSION['cart']);
        header("Location: order.php");
        }
    } ?>

    <!DOCTYPE html>
    <html>
    <?php include 'head.php'?>
    <body>
    <?php include 'header.php' ?>
    <div class="center wrapper">
        <div class="page-title">
            <h1>
                Finialize your order
            </h1>
        </div>
        <form action="" method="post" id="nameform">
            <p> <?php echo $data[0]['userEmail']; ?> <br></p>
            <p> <?php echo $data[0]['userName']; ?> <br></p>
            <?php $itemTotal = 0; ?>
                <div class="order-container">
                <?php foreach (($_SESSION['cart']) as $cart) { ?>
                <?php
                $stmt = $pdo->prepare("SELECT * FROM item WHERE Id=?");
                $stmt->execute([$cart]);
                $data = $stmt->fetchAll();
                    

                foreach ($data as $row) { ?>
                     
                    <div class="order-item">
                        <div class="block-content"> 
                            <div class="order-item-list">
                                <div class="order-item-chekcout">
                                    <div class="cart-image-wrapper">
                                    <img class="item-image" src="./<?php echo $row['itemImg']; ?>" alt="<?php echo $row['itemImg']; ?>"
                                    width="75"
                                    height="75"> <br></p>
                                    </div>
                                    <div class="order-item-desc">
                                        <p>
                                            <?php echo $row['itemName']; ?> <br>
                                        </p>
                                    </div>
                                    <div class="div-block">
                                        <div class="text-block"> 
                                        <p>€<?php echo $row['itemPrice']; 
                                        $itemTotal += $row['itemPrice'];
                                        ?> <br></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
      
                <?php } ?>
                </div>
            <?php } ?>
                <p>
                    Order total: €
                    <?php echo $itemTotal ?>
                </p>
            <div class="checkout-container">
                <p>
                    <label for="fname">Credit card number </label><br>
                    <input type="text" id="fname" name="ccnum"><br>
                </p>
                <p>
                    <label for="lname">Experition date </label><br>
                    <input type="text" id="lname" name="ccexp"><br>
                </p>
                <p>
                    <label for="lname">Cardholder name </label><br>
                    <input type="text" id="lname" name="cccarname"><br>
                </p>
                <p>
                    <label for="lname">CVV code </label><br>
                    <input type="text" id="lname" name="cccvv"><br>
                </p>
            </div>
                <p>
                    <button type="submit" class="button" name="button" value="">
                        Finalize
                    </button>
                    <br>
                </p>
            </div>
        </form>
        <div class="push"></div>
    </div>
    <?php include 'footer.php'; ?>
    </body>
    </html>
    <?php
} else {
    header("Location: index.php");
}






