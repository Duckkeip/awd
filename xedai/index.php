<!DOCTYPE html>
<html>
<head>
    <title>Shop Xe Dap Milk</title>
    <link rel="stylesheet" type="text/css" href="style_css.css">
</head>
<body>
    <div id="header">
        <a href="#">Địa chỉ cửa hàng</a>
        <a href="#">Hotline: 0123 456 789</a>
        <a href="#">Chăm sóc khách hàng</a>
    </div>
    <?php 
        include("view/menungang.php");
    ?>


    
         <h2>BỘ SƯU TẬP XE ĐẠP 2024 </h2>
 <div id="content" style="display:grid;grid-template-columns:auto auto auto ">         
 <?php
                if(!isset($_GET['pid'])) 
                    include("view/content.php");
                else{
                    $page=$_GET['pid'];
                    switch($page)
                    {
                        case 1:include("view/content.php");
                        break;
                        case 2:include("view/khuyenmai.php");
                        break;
                        case 3:include("view/dichvu.php");
                        break;
                        case 4:include("view/giohang.php");
                        break;
                        
                            
                    }   
                }
                ?>
</div>


    <div id="footer">
        <span>THÔNG TIN
        <hr>
        <ul>
            <li>Trụ sở: 100 Hải Thượng Lãn Ông, P.10, Quận 5, TP.HCM</li>
            <li>Email: info@xedap.vn</li>
            <li>ĐKKD/MST: 0313891315</li>
        </ul>
        </span>
        <span>CHÍNH SÁCH
        <hr>
        <ul>
            <li>Chế độ bảo hành</li>
            <li>Khuyến mãi</li>
            <li>Hướng dẫn trả góp</li>
        </ul>
        </span>
        <span>KẾT NỐI
        <hr>
        <ul>
            <li>Youtube</li>
            <li>Zalo</li>
            <li>Facebook</li>
        </ul>
        </span>
    </div>
    </div>
</body>
</html>
