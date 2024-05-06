-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2024 lúc 01:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitiethd`
--

CREATE TABLE `tblchitiethd` (
  `MaHD` varchar(30) NOT NULL,
  `idSach` varchar(30) NOT NULL,
  `SoLuong` varchar(30) NOT NULL,
  `GiaBan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitiethd`
--

INSERT INTO `tblchitiethd` (`MaHD`, `idSach`, `SoLuong`, `GiaBan`) VALUES
('HD4', 'id8', '1', '900'),
('HD4', 'id9', '2', '700'),
('HD5', '146', '2', '49500'),
('HD5', '328', '1', '75000'),
('HDprohz@gmail.com0', 'id10', '1', '800'),
('HDprohz@gmail.com0', 'id2', '3', '500'),
('HDprohz@gmail.com0', 'id6', '1', '600'),
('HDprohz@gmail.com1', 'id1', '1', '200'),
('HDprohz@gmail.com1', 'id8', '1', '900'),
('HDtangchichung@gmail.com1', 'id7', '1', '800');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

CREATE TABLE `tblhoadon` (
  `MaHD` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `TongTien` varchar(30) NOT NULL,
  `TinhTrang` varchar(30) NOT NULL,
  `NgayThang` date NOT NULL,
  `Email_NhanVien` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
--

INSERT INTO `tblhoadon` (`MaHD`, `Email`, `TongTien`, `TinhTrang`, `NgayThang`, `Email_NhanVien`) VALUES
('HD4', 'quang@gmail.com', '2300', 'Đã hoàn thành', '2024-04-30', 'nhanvien@gmail.com'),
('HD5', 'quang@gmail.com', '75099', 'Đang xử lý', '2024-05-02', 'nhanvien@gmail.com'),
('HDprohz@gmail.com0', 'prohz@gmail.com', '2900', 'Đã hoàn thành', '2020-06-16', 'nhanvien@gmail.com'),
('HDprohz@gmail.com1', 'prohz@gmail.com', '1100', 'Đã hoàn thành', '2020-06-16', 'nhanvien@gmail.com'),
('HDtangchichung@gmail.com1', 'tangchichung@gmail.com', '800', 'Đã hoàn thành', '2020-06-19', 'nhanvien@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsach`
--

CREATE TABLE `tblsach` (
  `idSach` varchar(30) NOT NULL,
  `tensach` varchar(30) NOT NULL,
  `idTheLoai` varchar(30) NOT NULL,
  `GiaBan` varchar(30) NOT NULL,
  `urlHinh` varchar(255) NOT NULL,
  `ThongTin` varchar(200) NOT NULL,
  `HienThi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsach`
--

INSERT INTO `tblsach` (`idSach`, `tensach`, `idTheLoai`, `GiaBan`, `urlHinh`, `ThongTin`, `HienThi`) VALUES
('108', 'Frieren - Pháp Sư Tiễn Táng - ', '4', '38000', 'frieren-phap-su-tien-tang-tap-6-2.jpg', 'Trong tập này, chúng ta tiếp tục theo chân Frieren - một pháp sư tài ba, trong vòng 2 cuộc thi pháp sư. Sau khi đánh bại Quỷ vương, Frieren và tổ đội anh hùng của cô bước vào một mê cung bí ẩn. Tại đâ', 0),
('132', 'Kỹ Thuật', '3', '2', 'sach9.png', 'GG!', 0),
('146', 'Diệt Slime Suốt 300 Năm, Tôi L', '4', '49500', 'b_a_2_8_1 (1) (1).jpg', 'Diệt Slime Suốt 300 Năm, Tôi Levelmax Lúc Nào Chẳng Hay - Tập 12\r\n\r\nSau khi chuyển đến thế giới khác, Azusa trong cơ thể thiếu nữ 17 tuổi đã trở thành phù thủy trường sinh bất lão mạnh nhất. Những tưở', 0),
('15', 'Bộ Thiên Ca - Tập 1', '4', '100000', 'b_a_1_5_4.jpg', 'Kể từ giây phút chào đời, cặp long phượng mà hoàng phi hạ sinh đã bị định sẵn hai số mệnh hoàn toàn trái ngược nhau. Hoàng tử mang nốt ruồi chu sa đỏ giữa trán, mà công chúa lại có bàn tay sáu ngón bấ', 0),
('240', 'Bộ Thiên Ca - Tập 2', '4', '100000', 'bia_ao (1).png', 'Mối liên kết định mệnh đặc biệt đã giúp cặp anh em Khứ Trần và A Đinh nhận ra sự tồn tại của người còn lại và có thể trao đổi với nhau. Tuy nhiên hai người vẫn bị chia cách nghìn trùng. A Đinh buộc ph', 0),
('252', 'Grimgar - Ảo Ảnh Và Tro Tàn - ', '4', '70000', 'grimgar-ao-anh-va-tro-tan-tap-16-2.jpg', 'Cuốn sách \"Grimgar - Ảo Ảnh Và Tro Tàn - Tập 16\" sẽ đưa bạn vào những mối liên kết phức tạp và đầy bất ngờ ở thế giới Grimgar. Nhóm Haruhiro sẽ phải vượt qua những khó khăn, đối mặt với những âm mưu r', 0),
('265', 'Thất Lạc Cõi Người ', '5', '99000', 'that-lac-coi-nguoi-tb-2020_eni3-k1.jpg', 'Thất Lạc Cõi Người là một tác phẩm kinh điển nổi tiếng của văn học Nhật Bản hiện đại và là cuốn tiểu thuyết cuối cùng của Dazai Osamu. Thất Lạc Cõi Người mang nhiều nét tự thuật, là một tiểu thuyết tự', 0),
('305', 'Neon Genesis Evangelion - Coll', '4', '150000', '8935278602361_1.jpg', 'Neon Genesis Evangelion - Collector’s Edition - Tập 1\r\nNăm 2000, thiên thạch đã rơi xuống Nam Cực, kéo theo thảm họa chưa từng thấy trong lịch sử nhân loại - “Chấn động thứ hai”. Mực nước biển dâng, t', 0),
('328', 'Solo Leveling - Tôi Thăng Cấp ', '4', '75000', 'solo-leveling-toi-thang-cap-mot-minh-tap-9-3.jpg', 'Trong Tập 9 của Solo Leveling, chúng ta tiếp tục theo chân THỢ SĂN SUNG JIN WOO - một anh chàng thợ săn tài ba với khả năng thăng cấp đáng kinh ngạc. Trước khi kiểm tra lại thứ hạng, Sung Jin Woo quyế', 1),
('355', 'Đường Mòn Muôn Nẻo', '5', '150000', 'duong-mon-muon-neo.jpg', 'Cuốn sách là một cuộc phiêu lưu ngoạn mục khám phá mạng lưới những con đường trên khắp hành tinh, từ con đường của loài kiến, dấu chân của người tiền sử, đến kỷ nguyên kỹ thuật số. Thông qua câu chuyệ', 0),
('366', 'Hạ Đỏ', '5', '120000', 'ha-do-ban-dac-biet.jpg', 'Mùa hè năm đó, Chương được bố mẹ cho về quê chơi. Ở đây, cậu được biết đến những trò chơi thú vị cùng hai đứa em con nhà dì của mình, những trò chơi mà Chương chẳng thể kiếm ở đâu được khi còn sống ở ', 1),
('42', 'Còn Chút Gì Để Nhớ', '5', '120000', 'con-chut-gi-de-nho-db.jpg', 'Đó là những kỷ niệm thời đi học của Chương, lúc mới bước chân vào Sài Gòn và làm quen với cuộc sống đô thị. Là những mối quan hệ bạn bè tưởng chừng hời hợt thoảng qua nhưng gắn bó suốt cuộc đời. Cuộc ', 1),
('422', 'Ma Pháp Thiếu Nữ Madoka Magica', '4', '120000', 'boxset-ma-phap-thieu-nu-madoka-magica-cuoc-phan-nghich-3.jpg', 'rong cuộc sống trở về quỹ đạo \"bình thường\" của thế giới Ma Nữ, Akemi Homura đã phát hiện ra điều bất thường đang diễn ra. Những gì mà thế giới này cho rằng là \"cân bằng\" có thể chỉ là một cái kết, ho', 0),
('440', 'Chú Bé Rắc Rối ', '5', '120000', 'chu-be-rac-roi-ban-db.jpg', 'Chú bé rắc rối là câu chuyện về đôi bạn “cùng tiến” An và Nghi. Nghi học giỏi và là một tấm gương sáng bao nhiêu thì An lại ham chơi và lười học bấy nhiêu, và những câu chuyện tréo ngoe bắt đầu xảy ra', 0),
('470', 'Đuổi Theo Ánh Sáng', '5', '200000', 'duoi-theo-anh-sang.jpg', 'Quyển hồi ký Đuổi theo ánh sáng của đạo diễn kiêm nhà biên kịch đoạt giải Oscar Oliver Stone đã khắc họa từ tuổi thơ phức tạp ở New York, đến thời gian tại ngũ ở miền Nam Việt Nam, và những nỗ lực cùn', 0),
('52', 'Kỹ Thuật Nâng Cao', '1', '1000', 'tokill.jpg', 'aaaaaaaaaaaaa\r\n', 0),
('id1', 'Lập trình C và C++', '1', '200', 'sach1.jpg', 'Lập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập trình mà các nhà phát triển tuân...', 0),
('id10', 'The Great Convergence', '3', '800', 'hp.jpg', 'The Great Convergence: Information Technology and the New Globalization [Baldwin, Richard] on Amazon.com. *FREE* shipping on qualifying offers.', 0),
('id2', 'Lập trình Java', '1', '500', 'sach2.jpg', 'Lập trình Java sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nava là một ngôn ngữ lập trình hướng đối tượng và dựa trên các lớp. Khác với phần lớn ngôn ngữ lập trình thông thường, thay vì biên dịch mã', 0),
('id3', 'Lập trình C#', '1', '400', 'sach3.png', 'Lập trình C# sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC# là ngôn ngữ lập trình hướng đối tượng, được Microsoft phát triển dựa trên nền tảng của ngôn ngữ Java và C++... Hướng dẫn lập trình C# cho n', 0),
('id4', 'Lập trình PyThon', '1', '450', 'sach4.jfif', 'Lập trình PyThon sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình.\r\nPython là một ngôn ngữ lập trình bậc cao cho các mục đích lập trình đa năng, do Guido van Rossum tạo ra và lần đầu ra mắt vào năm 1991', 0),
('id5', 'Cấu trúc dữ liệu và giải thuật', '2', '600', 'sach5.jfif', 'Cấu trúc dữ liệu và giải thuật giúp bạn cứng cỏi hơn.\r\nCấu trúc dữ liệu và giải thuật (Data Structure and Algorithms) - Học Cấu trúc dữ liệu & giải thuật với ngôn ngữ C, C++ và Java theo các bước cơ b', 0),
('id6', 'Các bài toán Quy Hoạch Động', '2', '600', 'sach6.jpg', 'Trong ngành khoa học máy tính, quy hoạch động là một phương pháp giảm thời gian chạy của các thuật toán thể hiện các tính chất của các bài toán con gối nhau và cấu trúc con tối ưu.', 0),
('id7', 'Clean Code', '3', '800', 'sach7.jpg', 'Code của bạn được coi là “Clean” nếu có thể được hiểu một cách rõ ràng bởi các thành viên trong team. Clean code có thể đọc và phát triển bởi developer khác, với sự dễ hiểu, dễ thay đổi, dễ bảo trì, d', 0),
('id8', 'Java Core 1st Edition', '3', '900', 'sach8.jpg', 'Core Java for the Impatient (1st Edition) [Cay S. Horstmann] on Amazon.com. *FREE* shipping on qualifying offers. Paperback International Edition ... Same .', 0),
('id9', 'Fundamentals of IT', '3', '700', 'sach9.png', 'IT Fundamentals. IT Fundamentals includes computer hardware, computer software, networking, security, and basic IT literacy. This course comprises 15 lessons covering IT fundamentals. ... The course a', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `email` varchar(30) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `capbac` varchar(30) NOT NULL,
  `Del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`email`, `matkhau`, `capbac`, `Del`) VALUES
('adjj@gmail.com', '123', 'nhanvien', 0),
('admin@gmail.com', 'admin', 'admin', 0),
('hacker@gmail.com', '123', 'khachhang', 1),
('khachhang@gmail.com', 'khachhang', 'khachhang', 0),
('nhanvien@gmail.com', '123', 'nhanvien', 0),
('prohz@gmail.com', '123', 'khachhang', 0),
('quang@gmail.com', '123', 'khachhang', 0),
('tangchichung@gmail.com', '123', 'khachhang', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltheloai`
--

CREATE TABLE `tbltheloai` (
  `idTheLoai` varchar(30) NOT NULL,
  `tenTheLoai` varchar(30) NOT NULL,
  `HienThi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltheloai`
--

INSERT INTO `tbltheloai` (`idTheLoai`, `tenTheLoai`, `HienThi`) VALUES
('1', 'Sách Kỹ Thuật Lập Trình', 0),
('2', 'Sách Thuật Toán Và Giải Thuật', 0),
('3', 'Sách Tiếng Anh Chuyên Ngành', 0),
('4', 'Manga - Comic', 0),
('5', 'Văn học', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthongtin`
--

CREATE TABLE `tblthongtin` (
  `hovaten` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `goitinh` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthongtin`
--

INSERT INTO `tblthongtin` (`hovaten`, `email`, `goitinh`) VALUES
('ashdjas', 'adjj@gmail.com', 'nam'),
('admin', 'admin@gmail.com', 'nam'),
('hacker', 'hacker@gmail.com', 'nam'),
('khachhang', 'khachhang@gmail.com', 'nữ'),
('nhanvien', 'nhanvien@gmail.com', 'nam'),
('prohz', 'prohz@gmail.com', 'nam'),
('quang', 'quang@gmail.com', 'nam'),
('admin', 'tangchichung@gmail.com', 'nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD PRIMARY KEY (`MaHD`,`idSach`),
  ADD KEY `FKCTHDISSACH` (`idSach`),
  ADD KEY `FKCTHDMAHD` (`MaHD`);

--
-- Chỉ mục cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FKEmail_HD` (`Email`),
  ADD KEY `FKNAHAsd` (`Email_NhanVien`);

--
-- Chỉ mục cho bảng `tblsach`
--
ALTER TABLE `tblsach`
  ADD PRIMARY KEY (`idSach`),
  ADD KEY `FKTL` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `tbltheloai`
--
ALTER TABLE `tbltheloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- Chỉ mục cho bảng `tblthongtin`
--
ALTER TABLE `tblthongtin`
  ADD PRIMARY KEY (`email`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD CONSTRAINT `FKCTHDISSACH` FOREIGN KEY (`idSach`) REFERENCES `tblsach` (`idSach`),
  ADD CONSTRAINT `FKCTHDMAHD` FOREIGN KEY (`MaHD`) REFERENCES `tblhoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD CONSTRAINT `FKEmail_HD` FOREIGN KEY (`Email`) REFERENCES `tblthongtin` (`email`),
  ADD CONSTRAINT `FKNAHAsd` FOREIGN KEY (`Email_NhanVien`) REFERENCES `tbltaikhoan` (`email`);

--
-- Các ràng buộc cho bảng `tblsach`
--
ALTER TABLE `tblsach`
  ADD CONSTRAINT `FKTL` FOREIGN KEY (`idTheLoai`) REFERENCES `tbltheloai` (`idTheLoai`);

--
-- Các ràng buộc cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD CONSTRAINT `FK` FOREIGN KEY (`email`) REFERENCES `tblthongtin` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
