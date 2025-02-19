<?php 
    // Include PHP files for login and signup functionality
    include("function/login.php");
    include("function/customer_signup.php");
?>

<!DOCTYPE html>
<html>
<head>
    <title>OmarTill</title>
    <link rel="icon" href="img/logo.jpg" />
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <!-- Include jQuery before Bootstrap JS files -->
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/carousel.js"></script>
    <script src="js/button.js"></script>
    <script src="js/dropdown.js"></script>
    <script src="js/tab.js"></script>
    <script src="js/tooltip.js"></script>
    <script src="js/popover.js"></script>
    <script src="js/collapse.js"></script>
    <script src="js/modal.js"></script>
    <script src="js/scrollspy.js"></script>
    <script src="js/alert.js"></script>
    <script src="js/transition.js"></script>
</head>
<body>
    <div id="header">
        <img src="img/logo.jpg">
        <label>OmarTill</label>
        <ul>
            <li><a href="#signup" data-toggle="modal">Sign Up</a></li>
            <li><a href="#login" data-toggle="modal">Login</a></li>
        </ul>
    </div>

    <!-- Login Modal -->
    <div id="login" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:400px;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h3 id="myModalLabel">Login...</h3>
        </div>
        <div class="modal-body">
            <form method="post">
                <center>
                    <input type="email" name="email" placeholder="Email" style="width:250px;">
                    <input type="password" name="password" placeholder="Password" style="width:250px;">
                </center>
            </div>
            <div class="modal-footer">
                <input class="btn btn-primary" type="submit" name="login" value="Login">
                <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
            </form>
        </div>
    </div>

    <!-- Signup Modal -->
    <div id="signup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h3 id="myModalLabel">Sign Up Here...</h3>
        </div>
        <div class="modal-body">
            <form method="post">
                <center>
                    <input type="text" name="firstname" placeholder="Firstname" required>
                    <input type="text" name="mi" placeholder="Middle Initial" maxlength="1" required>
                    <input type="text" name="lastname" placeholder="Lastname" required>
                    <input type="text" name="address" placeholder="Address" style="width:430px;"required>
                    <input type="text" name="country" placeholder="Province" required>
                    <input type="text" name="zipcode" placeholder="ZIP Code" required maxlength="4">
                    <input type="text" name="mobile" placeholder="Mobile Number" maxlength="11">
                    <input type="text" name="telephone" placeholder="Telephone Number" maxlength="8">
                    <input type="email" name="email" placeholder="Email" required>
                    <input type="password" name="password" placeholder="Password" required>
                </center>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" name="signup" value="Sign Up">
                <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
            </form>
        </div>
    </div>

    <div id="container">
        <div class="nav">
            <ul>
                <li><a href="index.php"><i class="icon-home"></i>Home</a></li>
                <li><a href="product.php"><i class="icon-th-list"></i>Product</a></li>
                <li><a href="aboutus.php"><i class="icon-bookmark"></i>About Us</a></li>
                <li><a href="contactus.php"><i class="icon-inbox"></i>Contact Us</a></li>
                <li><a href="privacy.php"><i class="icon-info-sign"></i>Privacy Policy</a></li>
                <li><a href="faqs.php"><i class="icon-question-sign"></i>FAQs</a></li>
            </ul>
        </div>

        <div id="carousel">
            <!-- Carousel HTML -->
        </div>

        <div id="video">
            <video controls autoplay width="445px" height="300px">
                <source src="video/commercial.mp4" type="video/mp4">
            </video>
        </div>

        <div id="content">
            <div id="product" style="position:relative; margin-top:30%;">
                <center><h2><legend>Feature Items</legend></h2></center>
                <br />
                <?php 
                    // Ensure $conn is properly initialized and connected
                    $query = mysqli_query($conn, "SELECT * FROM product WHERE category='feature' ORDER BY product_id DESC") or die (mysqli_error());
                    while($fetch = mysqli_fetch_array($query)) {
                        $pid = $fetch['product_id'];
                        $query1 = mysqli_query($conn, "SELECT * FROM stock WHERE product_id = '$pid'") or die (mysqli_error());
                        $rows = mysqli_fetch_array($query1);
                        $qty = $rows['qty'];
                        if($qty > 5) {
                            echo "<div class='float'>";
                            echo "<center>";
                            echo "<a href='details.php?id=".$fetch['product_id']."'><img class='img-polaroid' src='photo/".$fetch['product_image']."' height='300px' width='300px'></a>";
                            echo " ".$fetch['product_name']."";
                            echo "<br />";
                            echo "P ".$fetch['product_price']."";
                            echo "<br />";
                            echo "<h3 class='text-info' style='position:absolute; margin-top:-90px; text-indent:15px;'> Size: ".$fetch['product_size']."</h3>";
                            echo "</center>";
                            echo "</div>";
                        }
                    }
                ?>
            </div>
        </div>
    </div>

    <div id="footer">
        <div class="foot">
            <p style="font-size:25px;">OmarTill GmbH. 2024</p>
        </div>
        <div id="foot">
            <h4>Links</h4>
            <ul>
                <li><a href="http://www.facebook.com/alphaware">Facebook</a></li>
                <li><a href="http://www.twitter.com/alphaware">Twitter</a></li>
                <li><a href="http://www.pinterest.com/alphaware">Pinterest</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
