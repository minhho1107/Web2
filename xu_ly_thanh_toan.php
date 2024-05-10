<?php
session_start();

//hoa don
$hoadon = 'HD';

$conn = mysqli_connect("localhost", "root", "", "webdb");
mysqli_query($conn, "SET NAMES 'utf8'");


//tạo hóa đơn
$date = new DateTime();
$ma_hoa_don =  "HD" . $date->format('YmdHis');
$email = $_SESSION['email'];
$tongtien = 0;
$Tinhtrang = 'Đang xử lý';
$String = $date->format('y-m-d');
$email_nhan_vien = "nhanvien@gmail.com";
$sdt_khach = $_GET['phone'];
$dia_chi_khach = $_GET['address'];
$add_sqlHoaDon = "insert into tblhoadon VALUES ('$ma_hoa_don','$email','$tongtien','$Tinhtrang','$String','$email_nhan_vien', '$sdt_khach','$dia_chi_khach')";
$id_hoa_don_add = $conn->query($add_sqlHoaDon);

// LẤY DS GIỎ HÀNG
$sqlHoaDon = "select * from tblgiohang1 where email='" . $_SESSION['email'] . "'";
$resultHoaDon = mysqli_query($conn, $sqlHoaDon);

$tong_tien = 0;
while ($rowHoaDon = mysqli_fetch_array($resultHoaDon)) {
  $id_sach = $rowHoaDon['id_sach'];
  $so_luong = (int)$rowHoaDon['soluong'];
  $sach = "select GiaBan from tblsach where idSach='" . $id_sach . "' limit 1";
  $giaban = $conn->query($sach);
  if ($giaban->num_rows > 0) {
    // Fetch the result row
    $row = $giaban->fetch_assoc();
    // Access the price from the 'GiaBan' column
    $gia_ban = (int)$row['GiaBan'];
  } else {
    $gia_ban = 0;
  }

  $tong_tien = $tong_tien + ($gia_ban * $so_luong);

  $add_sqlHoaDon_ct = "insert into tblchitiethd VALUES (NULL,'$ma_hoa_don','$id_sach',$so_luong,$gia_ban)";
  // $add_sqlHoaDon_ct = "insert into tblchitiethd VALUES ('HD20240510152207','id8',12,12)";
  $conn->query($add_sqlHoaDon_ct);
}
$update_hoa_don = "update tblhoadon  SET TongTien='" . $tong_tien . "' WHERE MaHD = '" . $ma_hoa_don . "'";
$kq_update_hoa_don = mysqli_query($conn, $update_hoa_don);
$delete_gio_hang = "delete from tblgiohang1 where email='" . $_SESSION['email'] . "'";
$kq_delete_gio_hang = mysqli_query($conn, $delete_gio_hang);
header("location: thanhtoan.php");
