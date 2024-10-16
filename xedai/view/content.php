<?php 
    $link = new mysqli("localhost", "root", "", "db_xedapmilk");
    $sql = "SELECT * FROM sanpham";
    $result = $link->query($sql);

    while ($row = $result->fetch_assoc()) {
?>

<div class="product" style="
    
    ">
    <a href="" target="blank" >
        <img src="<?php echo $row['hinhanh']; ?>" style="width:200px;height:200px;border-radius:10%;
    ">
    </a>
    
        <h3 class="product1-name"><?php echo $row['ten_sanpham']; ?></h3>
        <p class="product1-code">Mã sản phẩm: <?php echo $row['sanpham_id']; ?></p>
        <p class="product1-price">Giá: <?php echo number_format($row['gia'], 0, ',', '.'); ?> VND</p>   
        <p class="product1-description">Mô tả: <?php echo $row['mo_ta']; ?></p>
</div>   
   

<?php 
    }
?>
