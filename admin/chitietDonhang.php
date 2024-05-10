<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	
</head>
<style>
	.header{
		border-style: solid;
		border-color: Black;
	}
	.footer{
		border-style: solid;
		padding-top: 50px;
	}

	.left {
		border-style: solid;
		border-color: black;
		/* background:  #33ccff; */
	}
	.center {
		border-style: solid;
		border-color: black;
	}
	.col-md-2 div{
		margin-top: 20px;
		border-style: solid;
		border-color: black;
	}
	.col-md-2 div:hover{
		background-color: red;
	}
	.textfield {
		width: 100px;
	}
	a {
		color: black;
		font-size: 20px;
		
	}
	a:hover {
		text-decoration: none;
		color: black;
	}
	.trai {
		margin-top:10px; 
		margin-bottom:10px; 
		text-align:center;
		background-color: blanchedalmond;
	}
</style>
<body>
<?php
	session_start(); 
	if ($_SESSION['capbac'] != 'admin' && $_SESSION['capbac'] != 'nhanvien') 
		header("location: ./../index.php");
	else {
?>
<div style="margin-left: 0px; margin-right: 0px; padding-right: 0px; padding-left: 0px;" >
	<div class="row" style="background: linear-gradient(to right, #33ccff 0%, #ff99cc 100%);">
		<div class="col header" style="color: white;" ><h2 style="text-align:center; padding-top:25px; padding-bottom: 25px;" >Trang Quản Trị (Admin)</h2></div>
	</div>

	<div class="row" >
		<div class="col-md-2 col-sm-2 left" >
			<?php 
			if ($_SESSION['capbac'] == 'admin') 
			echo 
			'
			<a href="main.php?act=onLeft&name=NhanVien"><div class="trai">Nhân Viên</div></a>
			';
			else
			{
			?>
			<a href="main.php?act=onLeft&name=DonHang"><div class="trai" >Đơn Hàng</div></a>
			<a href="main.php?act=onLeft&name=TheLoai"><div class="trai" >Thể Loại</div></a>
			<a href="main.php?act=onLeft&name=ThongKe"><div class="trai" >Thống Kê</div></a>
			<a href="main.php?act=onLeft&name=SanPham&tranghientai=1"><div class="trai" >Sản Phẩm</div></a>
			<a href="main.php?act=onLeft&name=xuLiSanPham"><div class="trai" >Thêm Sản Phẩm</div></a>
			<?php
			}
			?>
			

		</div>	
		<div  class="col-md-10 col-sm-10 center">
		<div class="table-responsive">
            <?php
                $connection = mysqli_connect("localhost","root","","webdb");
                if(isset($_POST['edit_btn'])){
                    $id=$_POST['edit_id'];
                    $query = "SELECT * FROM tblchitiethd WHERE MaHD='$id'";
                    $query_run = mysqli_query($connection,$query);

					$query2 = "SELECT * FROM tblhoadon WHERE MaHD='$id'";
                    $query_run2 = mysqli_query($connection,$query2);
					$row2 = mysqli_fetch_assoc($query_run2);
					$email = $row2['Email'];

					$query1 = "SELECT * FROM tblthongtin WHERE email='$email'";
                    $query_run1 = mysqli_query($connection,$query1);
                }
                
            ?>
            <table class="table table-bordered" id="datatable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>MaHD</th>
                        <th>ID Sach</th>
                        <th>So Luong</th>
                        <th>Gia Ban</th>
						<th>Thanh tien</th>
                        
                    </tr>
                </thead>
                <tbody>
                <?php
                    if( mysqli_num_rows($query_run)>0)
                    {
						$tonghd=0;
						echo "<h3>Thông tin sản phẩm của hóa đơn ".$id." </h3>";
						while($row1 = mysqli_fetch_assoc($query_run1)){
							echo '
							<div style="margin-left: -10px;" class="container dashboard-content">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-12">
					<div class="card">
						<h5 class="card-header">Thông tin khách hàng</h5>
						<div class="card-body">';
							echo "<h6> Tên hách hàng: ".$row1['hovaten']."<br>";
							echo "Email: ".$row1['email']."<br>";
							echo "SDT: ".$row2['SDT']."<br>";
							echo "Địa chỉ: ".$row2['DiaChi']."<br>"."</h6>";
							echo '
							</div>
				</div>
			</div>
		</div>
							';
							echo "<br>";

						}
                        while($row = mysqli_fetch_assoc($query_run))
                        {
						setlocale(LC_MONETARY, 'vi_VN');
						$price1 = number_format($row['GiaBan'], 0, ',', '.') . ' đ';
						$price2 = number_format($row['SoLuong']*$row['GiaBan'], 0, ',', '.') . ' đ';

						 
					 ?>
					 <tr>
                        <td><?php echo $row['MaHD']; ?></td>
                        <td><?php echo $row['idSach']; ?></td>
                        <td><?php echo $row['SoLuong']; ?></td>
                        <td><?php echo $price1; ?></td>
						<?php $thanhtien=$row['SoLuong']*$row['GiaBan'];
							$tonghd=$tonghd+$thanhtien;
						?>
						<td><?php
						$price2 = number_format($thanhtien, 0, ',', '.') . ' đ';
						 echo $price2;?> </td>

                        
                        
                    </tr>
                    <?php
						}
						$price3 = number_format($tonghd, 0, ',', '.') . ' đ';

						echo '
						<tr>
							<td colspan="4"></td>
							
							<td>'.$price3.'</td>
						</tr>
						';
                    }
                    else{
                        echo "<h3>Không tìm thấy thông tin sản phẩm của hóa đơn ".$id." </h3>";
                    }
                    ?>
                </tbody>
            </table>

            </div> 

		</div>	
	</div>


</div>


<?php } ?>	
</body>

</html>

