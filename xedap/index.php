<!DOCTYPE html>
<html>

    <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width,initial-scale=1.0">
            <link rel="stylesheet" href="index.css">
            <link rel="icon" href="img/xedap.jpg" >
            <title> ONLYBIKE </title>
    </head>
   
    <body >
        <header style="color:color-mix(in srgb-linear,purple,yellow );
         background:linear-gradient(rgb(189, 8, 8),yellow,rgb(241, 10, 10),red) ;    
        text-align: center;
        border-style:auto ;
        border-color: white;
        border-width: 10px;
        border-radius:10%;
        padding: 1px;
        height:60px;         
        margin-bottom: 100px;
        font-family:serif;
        font-style: italic;
        font-size: 50px;
        ;"> 
            <h1>XEDAP</h1>
            <?php
           include("view/header.php"); 
           ?>   
        </header>
            <?php 
            include("view/menungang.php"); 
            ?>
        <div class="grid-container" style="display:grid;
        grid-template-columns: 1px 2fr;">  
        <aside class="menuleft" style="background-color:#222;
        color:white;
        text-align:center;
        padding:10px;
        font:italic;
        width:80px;
        height: 300px;
        z-index:1;">
                <?php 
                    include("view/menuleft.php");   
                ?>
        </aside>    
            
                <div  id ="content" style="border:4px solid;
    border-color:color-mix(in hsl shorter hue, yellow 40%, red 50%);
    transform: translateY(-30px);
    background-size:cover;
    margin-left: 100px;
    width: 85%;
    height:200px;
    color:white;
    padding:10px;
    overflow-y: auto;
    height:100px;
    font-size:auto; 
    background-color: black;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap:10px;
    ">
                <?php
                if(!isset($_GET['pid'])) 
                    include("view/content.php");
                else{
                    $page=$_GET['pid'];
                    switch($page)
                    {
                        case 1:include("view/sanpham.php");
                        break;
                        case 2:include("view/timkiem.php");
                        break;
                        case 3:include("view/giohang.php");
                        break;
                        case 4:include("view/ynghia.php");
                        break;
                        case 5:include("view/lienhe.php");
                        break;
                        case 6:include("view/sanpham_loaixe.php");
                        break;
                            
                    }   
                }
                ?>
                
                </div>
        
        </div>
        <footer style="background-color: black ;
    text-align: center;
    padding:20px;
    margin-top:10px;
    color:white;
    font-size:10px;
    display:flex;
    justify-content: center;
    align-items: center;
    font:bold;
    width: 1350px;
    height: auto;
    gap:calc(200px);
    border-top: 4px solid color-mix(in hsl shorter hue, yellow 40%, red 50%);">
            
            <div class="a" >
                <h1 >THÔNG TIN</h1>
                <p>Trụ sở: 100 Hải Thượng Lãn Ông, P.10, Quận 5, TP.HCM</p>
                <p>Email: info@xedap.vn</p>
                <p>ĐKKD/MST: 0313891315</p>
                
            </div>
            <div class="a" >
                <h1 style="margin-bottom: 10px;">CHÍNH SÁCH</h1>
                <p>Chế độ bảo hành</p>
                <p>Khuyến mãi</</p>
                <p>Hướng dẫn trả góp</p>
                
                
            </div>
            <div class="a" >
                <h1 style="margin-bottom: 10px;">KẾT NỐI</h1>
                <p>Youtube</p>
                <p>Zalo</p>
                <p>Facebook</p>
                
                </div>
        </footer>
        
    </body>


</html>