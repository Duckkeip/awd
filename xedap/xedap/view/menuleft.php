<?php 
  $link=new mysqli("localhost","root","","db_xedap");
  $sql= "select * from theloai";
  $result = $link->query($sql);  
?>
    <ul style="list-style:none;">
<?php
    while($row=$result->fetch_assoc())
    {
?>
    <li><a href="index.php?pid=7&theloaixe=<?php echo $row['tentl'] ?>">

        <br>
        <?php
            echo $row["tentl"];
        ?>
        
    </li>
<?php
    }
?>
    </ul>