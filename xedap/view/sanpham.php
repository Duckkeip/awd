<link rel="stylesheet" href="sanpham.css">
<?php
    
    $link = new mysqli("localhost", "root", "", "db_xedap");
    $sql = "SELECT * FROM hanghoa";

    $result = $link->query($sql);

    while ($row = $result->fetch_assoc()) {
?>

<div class="product1" >
    <a href="" target="blank">
        <img src="<?php echo $row['hinhanh']; ?>" alt="Product Image" >
    </a>
    <div class="product1-info">
        <h3 class="product1-name"><?php echo $row['tenhang']; ?></h3>
        <p class="product1-code">Mã sản phẩm: <?php echo $row['mahang']; ?></p>
        <p class="product1-price">Giá: <?php echo number_format($row['dongia'], 0, ',', '.'); ?> VND</p>   
        <p class="product1-description">Mô tả: <?php echo $row['mota']; ?></p>
        <button>CHO VAO GIO</button>
        <button>MUA NGAY</button>
        
    </div>
    
</div>

<?php 
    }
?>
