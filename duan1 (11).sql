-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2024 lúc 10:33 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bill_name` varchar(50) NOT NULL,
  `bill_diachi` varchar(255) NOT NULL,
  `bill_sdt` int(10) NOT NULL,
  `bill_email` varchar(225) NOT NULL,
  `id_pttt` int(11) NOT NULL DEFAULT 1,
  `id_trangthai` int(11) NOT NULL DEFAULT 1,
  `ngaydathang` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `id_user`, `bill_name`, `bill_diachi`, `bill_sdt`, `bill_email`, `id_pttt`, `id_trangthai`, `ngaydathang`, `total`) VALUES
(138, 3, 'hoa', 'dfgh', 123456789, 'lamptph32198@fpt.edu.vn', 1, 4, '2023-12-07', 100960000),
(139, 3, 'lam', 'ádf', 123456789, 'lamptph32198@fpt.edu.vn', 1, 2, '2023-12-08', 94050000),
(140, 3, 'sdg', '2asdf', 123456789, 'lamptph32198@fpt.edu.vn', 1, 4, '2024-01-26', 28060000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `noidung`, `id_user`, `id_sp`, `ngaybinhluan`, `is_delete`) VALUES
(4, 'sdfghj', 3, '2', '2023-11-08', 1),
(8, 'lam', 3, '2', '01:37:14pm 28/11/2023', 1),
(12, 'good', 3, '9', '07:59:52pm 07/12/2023', 0),
(13, 'tốt', 3, '9', '08:09:17pm 07/12/2023', 0),
(14, 'đẹp', 3, '6', '11:43:16pm 07/12/2023', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_spbt` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_sp`, `img`, `tensp`, `gia`, `soluong`, `id_bill`, `id_spbt`) VALUES
(92, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 2, 118, 31),
(93, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 119, 31),
(94, 3, '1', 'anh1.jpg', 'Lenovo Slim 7 Pro X', 22890000, 1, 120, 34),
(95, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 120, 31),
(96, 3, '1', 'anh1.jpg', 'Lenovo Slim 7 Pro X', 22890000, 1, 121, 34),
(97, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 121, 31),
(98, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 122, 31),
(99, 3, '1', 'anh1.jpg', 'Lenovo Slim 7 Pro X', 22890000, 1, 122, 34),
(100, 3, '11', 'anh7.jpg', 'Workstation HP Zbook 15 G6 - Intel Core i7-9850H ', 15390000, 1, 123, 0),
(101, 3, '9', 'anh6.png', 'Laptop Lenovo Legion 5 Pro 16IRX8 82WK00APVN', 46990000, 1, 124, 0),
(102, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 125, 31),
(103, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 1, 126, 0),
(104, 3, '7', 'anh6.png', 'Laptop ASUS TUF GAMING FX506HF-HN014W', 16390000, 2, 126, 0),
(105, 3, '10', 'category-acer.jpg', 'Laptop Cũ Dell Precision 7520 - Intel Core i7', 16700000, 1, 127, 0),
(106, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 127, 0),
(107, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 2, 128, 31),
(108, 3, '5', 'category-asus.jpg', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 17290000, 1, 129, 31),
(109, 3, '10', 'category-acer.jpg', 'Laptop Cũ Dell Precision 7520 - Intel Core i7', 16700000, 1, 129, 32),
(110, 3, '12', 'category-dell.jpg', 'Macbook Air 13 Late 2020 (Z124000DF/Z127000DF)', 18900000, 1, 130, 94),
(111, 3, '10', 'category-acer.jpg', 'Laptop Cũ Dell Precision 7520 - Intel Core i7', 16700000, 1, 131, 90),
(112, 3, '9', 'anh6.png', 'Laptop Lenovo Legion 5 Pro 16IRX8 82WK00APVN', 46990000, 1, 131, 88),
(113, 9, '7', 'anh6.png', 'Laptop ASUS TUF GAMING FX506HF-HN014W', 16390000, 2, 132, 72),
(114, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 2, 133, 76),
(115, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 1, 134, 76),
(116, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 2, 137, 76),
(117, 3, '13', 'category-5.jpg', 'Macbook Air M2 2022 MLY33LL/A - 8 Core GPU |', 23490000, 1, 138, 97),
(118, 3, '6', 'anh3.jpg', ' Laptop Lenovo LOQ 15APH8 82XT001NUS - AMD ', 21390000, 1, 138, 67),
(119, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 2, 138, 75),
(120, 3, '9', 'anh6.png', 'Laptop Lenovo Legion 5 Pro 16IRX8 82WK00APVN', 46990000, 1, 139, 78),
(121, 3, '9', 'anh6.png', 'Laptop Lenovo Legion 5 Pro 16IRX8 82WK00APVN', 46990000, 1, 139, 89),
(122, 3, '8', 'anh9.jpg', 'Laptop HP OMEN 16 k0033dx 74S79UA', 27990000, 1, 140, 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name_dm` varchar(255) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name_dm`, `is_delete`) VALUES
(8, 'Sinh viên - văn phòng', 0),
(9, 'Gaming', 0),
(10, 'Đồ họa ', 0),
(11, 'Mỏng nhẹ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `lh_name` varchar(255) NOT NULL,
  `lh_email` varchar(255) NOT NULL,
  `lh_sdt` varchar(10) NOT NULL,
  `lh_noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `lh_name`, `lh_email`, `lh_sdt`, `lh_noidung`) VALUES
(5, 'ádfg', 'lamptph32198@fpt.edu.vn', '0123456789', 'xdfg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `name_magg` varchar(30) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `end_date` date NOT NULL,
  `soluong` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `name_magg`, `giamgia`, `end_date`, `soluong`, `is_delete`) VALUES
(5, 'SQL30K', 30000, '0000-00-00', 6, 1),
(6, 'SQL10K', 10000, '0000-00-00', 9, 1),
(7, 'SQL20K', 20000, '0000-00-00', 10, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausp`
--

CREATE TABLE `mausp` (
  `idmau` int(11) NOT NULL,
  `mau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mausp`
--

INSERT INTO `mausp` (`idmau`, `mau`) VALUES
(1, 'Đen'),
(2, 'Xám');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongthuctt`
--

CREATE TABLE `phuongthuctt` (
  `id` int(11) NOT NULL,
  `pttt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongthuctt`
--

INSERT INTO `phuongthuctt` (`id`, `pttt`) VALUES
(1, 'lam'),
(2, 'hoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name_role`) VALUES
(1, 'hgfd'),
(2, 'khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` varchar(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `img` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `id_dm` int(11) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `img`, `gia`, `mota`, `luotxem`, `id_dm`, `is_delete`) VALUES
('1', 'Lenovo Slim 7 Pro X', 'anh1.jpg', 22890000, 'Màn 14 inch cảm ứng đa điểm mượt mà, độ phân giải 3K, 120Hz siêu mượt mà, kèm độ chuẩn màu 100% sRGB tuyệt vời cho mọi nhu cầu làm việc, giải trí, đặc biệt là làm photoshop. Cấu hình cực khủng với chip AMD Ryzen 9 6900HS đời mới kết với với card đồ họa RTX 3050 giúp máy dư sức chơi mọi tựa game HOT cực khỏe ở setting cao, làm 3Ds Max, Sketchup, Maya… và render video siêu mượt mà. Sẵn 32GB DDR5 RAM đa nhiệm mượt mà, đi kèm với dung lượng ổ cứng lớn đến 1TB SSD giúp thỏa sức lưu trữ - mở file, ứng dụng .Truy xuất dữ liệu chỉ trong nháy mắt. Thiết kế sang trọng, mỏng nhẹ tối ưu cho di chuyển . Camera Full HD 1080p siêu sắc nét, tiện lợi. Kèm công tắc khóa giúp tránh làm lộ thông tin cá nhân cho các web đen .Thời lượng pin trâu 70Wh giúp bạn dễ dàng mang theo máy ra ngoài làm việc mà không lo đến vấn đề cắm sạc', 1, 9, 0),
('10', 'Laptop Cũ Dell Precision 7520 - Intel Core i7', 'category-acer.jpg', 16700000, '- Thiết kế chắc chắn cứng cáp, độ bề đạt chuẩn quân sự Mỹ     - Hiệu năng mạnh mẽ làm mượt đồ họa 3D phức tạp nhờ bộ vi xử lý Intel Core i7 6820HQ, RAM 8GB / 16GB DDR4, SSD 256GB cùng card đồ họa Nvidia Quadro M2200 đáp ứng mọi nhu cầu sử dụng của bạn     - Màn hình 15.6 inch Full HD mang lại hình ảnh được hiển thị cực kỳ sắc nét, màu sắc sống động     - Hê thống tản nhiệt mát mẻ nhờ 2 quạt tản nhiệt riêng biệt cho CPU và GPU giúp máy hoạt động mát mẻ.', 10, 10, 0),
('11', 'Workstation HP Zbook 15 G6 - Intel Core i7-9850H ', 'anh7.jpg', 15390000, '- Máy có thiết kế cực kì sang trọng với tông màu xám bạc, cùng các đường nét cắt xẻ táo bạo, tạo cảm giác máy vuông vắn, gọn gàng hơn.      - Hiệu năng mạnh mẽ xử lý tốt mọi tác vụ hình ảnh 3D chuyên nghiệp bởi chip Intel Core i7 9850H cùng card đồ họa rời NVIDIA Quadro T2000 khỏe trong tầm giá RẺ.     - Màn hình lớn 15.6 inch cùng độ phân giải Full HD cho hình ảnh được hiển thị rõ nét, màu sắc đạt độ chính xác cao     - Tản nhiệt hoạt động tối đa với các quạt tản lớn', 19, 10, 0),
('12', 'Macbook Air 13 Late 2020 (Z124000DF/Z127000DF)', 'category-dell.jpg', 18900000, 'Apple cho biết chiếc MacBook Air 2020 mới này sẽ cho hiệu năng mạnh mẽ nhanh hơn tới 3 lần so với \"chiếc laptop Windows bán chạy nhất trong phân khúc\" và mạnh nhanh hơn \"98% PC được bán ra trong năm ngoái\". Bên cạnh đó, Apple cũng tuyên bố con chip M1 mới cho hiệu năng và khả năng tiêu thụ năng lượng hiệu quả hơn bất cứ con chip Intel nào.Các ứng dụng của iOS có thể được cài đặt trực tiếp trên nền tảng macOS Big Sur, cho phép người dùng sử dụng các ứng dụng được thiết kế riêng cho iOS trên chính chiếc Mac, đây cũng là tin vui dành cho các lập trình viên iOS và macOS khi giờ đây họ có thể đồng nhất ứng dụng giữa các nền tảng. Thậm chí cả các ứng dụng nặng chuyên dụng như Adobe Photoshop hay Lightroom đều hoạt động mượt mà trên dòng MacBook mới. MacBook ARM mới cũng đi kèm với công cụ giả lập có tên Rosetta 2, cho phép \"dịch\" bất kỳ ứng dụng dành cho hệ Intel x86 trên hệ máy Mac cũ sang nền tảng ARM mới.', 8, 11, 0),
('13', 'Macbook Air M2 2022 MLY33LL/A - 8 Core GPU |', 'category-5.jpg', 23490000, '- Thiết kế mỏng nhẹ chỉ 11.3mm, tính di động cao với trọng lượng chỉ 1.24kg nhưng cũng không kém phần cứng cáp, mạnh mẽ với lối design vuông vức, đa dạng lựa chọn màu sắc lên đến 4 màu độc đáo cá tính riêng biệt     - Cấu hình vượt trội hơn hẳn với chip M2 cùng 8-Core GPU, giúp máy có thể xử lý công việc văn phòng, làm đồ họa 2D, hỗ trợ chơi game hoặc “cân” nhiều tác vụ nặng một lúc mà không hề xảy ra hiện tượng máy giật, lag.     - Màn hình Liquid Retina sống động, chân thực hơn với độ sáng lên đến 500 nits, hỗ trợ tận 1 tỷ màu cùng độ phân giải 2.560 x 1.664 pixel, công nghệ True Tone hiện đại, thiết kế tai thỏ độc đáo giúp đem đến trải nghiệm hiển thị cực ấn tượng     - Trang bị thêm nhiều tính năng nổi bật khác như: camera có độ phân giải lên đến Full HD 1080p giúp họp, làm việc thuận tiện; tích hợp cảm biến vân tay ngay trên nút nguồn bàn phím giúp mở máy ngay lập tức chỉ với thao tác 1 chạm, bảo mật vân tay an toàn hơn.', 16, 11, 0),
('2', 'Acer Nitro 5 AN515-58-56CH', 'anh2.jpg', 21590000, 'latop RTX 30 series với card NVIDIA GeForce RTX 3050Ti 4 GB, khẳng định nguồn sức mạnh vô tận không chỉ đáp ứng tốt nhu cầu chiến game mà còn hoàn thành xuất sắc nhiệm vụ của một chiếc laptop đồ họa - kỹ thuật. Vừa chiến game vừa nghe nhạc mà vẫn không xảy ra tình trạng giật lag nhờ bộ nhớ RAM 8 GB. Laptop SSD 512 GB cho tốc độ đọc ghi nhanh chóng, bạn vẫn có thể mở rộng không gian lưu trữ nhờ khe cắm hỗ trợ SSD M.2 PCIe mở rộng.Kích thước 15.6 inch cùng tấm nền IPS mang đến không gian hiển thị hình ảnh rộng lớn. Công nghệ Acer ComfyView hạn chế hiện tượng ánh sáng xanh, bảo vệ thị lực người dùng. ', 2, 10, 0),
('3', 'Laptop Dell Inspiron 16 Plus 7620 - Intel Core i7', 'category-hp.jpg', 18990000, 'Cấu hình cực khỏe trong tầm giá với chip i7-12700H đời mới có 14 nhân 20 luồng đáp ứng hết tất cả các nhu cầu làm việc, học tập từ đơn giản đến phức tạp như: chơi mượt các tựa game HOT, render video nặng cực khỏe…Trang bị sẵn bộ dung lượng KHỦNG NHẤT TẦM GIÁ với RAM 40GB DDR5, bộ nhớ trong SSD PCle 4.0 có dung lượng lên tới 1TB đem lại tốc độ trích xuất, truyền tải dữ liệu nhanh chóng.Không gian hiển thị rộng lớn với kích thước 16 inch. Độ phân giải QHD+ mang đến chất lượng hình ảnh hiển thị siêu sắc nét và chân thực.Thiết kế cao cấp với xám đen sang trọng và lịch lãm, vỏ nhôm siêu bền bỉ và chắc chắn với độ hoàn thiện vượt trội nâng cao khả năng chống sốc, chống rơi vỡ cực tốt giúp hoàn toàn yên tâm sử dụng trong thời gian dài  - Bàn phím gõ cực sướng cùng Touchpad cực lớn giúp tối ưu cho trải nghiệm người dùng  - Pin 6 cell 86Wh CỰC TRÂU, thoải mái làm việc lên đến 12 tiếng', 3, 8, 0),
('4', 'HP Pavilion 15-CW | AMD R3-3300U | 15.6 inch Full HD', 'anh8.jpg', 11800000, '- Là chiếc laptop HIẾM HOI trong tầm giá không chỉ làm tốt các tác vụ văn phòng cơ bản mà còn có thể chơi được game  - Thiết kế sang trọng với vỏ kim loại màu xám bạc, tự tin là chiếc laptop ĐẸP NHẤT PHÂN KHÚC  - Chất liệu cứng cáp, chắc chắn, mang độ bền đặc trưng của dòng HP, yên tâm làm việc trong nhiều năm  - Màn lớn 15.6 inch Full HD sắc nét, cho trải nghiệm làm việc và giải trí cực đã', 4, 8, 0),
('5', 'Laptop Asus Vivobook S5402ZA-IS74-M003Y0 - Intel Core i7-12700H', 'category-asus.jpg', 17290000, '- Được thiết kế với mặt A được làm từ chất liệu kim loại cao cấp siêu bền bỉ, tạo nên một vẻ ngoại hình sang trọng và đẳng cấp, xịn hơn hẳn các dòng Vivobook khác trong cùng tầm giá     - Là chiếc laptop văn phòng sở hữu con chip i7 - 12700H RẺ NHẤT giúp bạn xử lý mọi tác vụ một cách trơn tru, làm đồ họa 2D, chỉnh sửa hình ảnh siêu mượt, thậm chí là chiến tốt mọi tựa game ở mức setting cao     - Màn hình 14.5 inch viền mỏng, màn OLED độ phân giải 2.8K, chuẩn màu 100% DCI-P3 đem đến hình ảnh cực sắc nét, sống động giúp trải nghiệm làm việc, giải trí cực đã     - Ngoại hình bắt mắt, thời thượng với tone màu Midnight Black cực kỳ thời trang, lịch lãm cùng thiết kế mỏng gọn giúp di chuyển dễ dàng     - Pin 70WHrs cực trâu cho bạn sử dụng tới 7 - 8 tiếng với các tác vụ văn phòng', 5, 8, 0),
('6', ' Laptop Lenovo LOQ 15APH8 82XT001NUS - AMD ', 'anh3.jpg', 21390000, '- Thiết kế cool ngầu hút mắt, thừa hưởng nhiều đường nét của dòng gaming Legion cao cấp. Máy cũng sở hữu độ bền bỉ cực đỉnh giúp bạn dùng nhiều năm cũng không lo tã máy     - Combo chip - card mới nhất 2023 với chip R7 7840HS và RTX 4050 giúp máy dư sức “tham chiến” mọi thử thách trên đấu trường game cũng làm các công việc liên quan đến thiết kế 3D, render … cực mượt mà     - Màn hình sắc nét, sống động và mượt mà, tần số quét 144Hz chống xé hình khi chơi các tựa game FPS, bắn súng. Lựa chọn lý tưởng nhất để chơi game mượt mà     - Hệ thống tản nhiệt siêu mát với bố trí tản hợp lý, thông minh', 5, 9, 0),
('7', 'Laptop ASUS TUF GAMING FX506HF-HN014W', 'anh6.png', 16390000, '- Chip i5 đời 11 cho hiệu năng mạnh mẽ cùng card RTX 2050 sẵn sàng chiến mượt mọi tựa game HOT và đồ họa 3D.    - Thiết kế cực cool ngầu với những họa tiết phay xước nổi bật và vỏ kim loại chắc chắn, bền bỉ đạt chuẩn quân sự, bất chấp mọi sự va đập.    - Màn hình 15.6 inch, độ phân giải Full HD, tấm nền IPS và tần số quét 144Hz cho những phút giây chơi game mượt mà, chân thực và sống động nhất, không sợ xé hình khi chơi bắn súng, đua xe    - Bộ tản nhiệt chất lừ với 2 quạt, 4 ống dẫn nhiệt, 3 bộ tản nhiệt giúp hệ thống luôn mát, nhiệt độ luôn được giữ ở mức tối ưu nhất    - Bảo hành 24 tháng chính hãng', 8, 9, 0),
('8', 'Laptop HP OMEN 16 k0033dx 74S79UA', 'anh9.jpg', 27990000, '- Sẵn 16GB RAM DDR5 và SSD 1TB tốc độ cao cho phép làm việc đa nhiệm siêu mượt, lưu trữ - mở máy - truy xuất dữ liệu chỉ mất vài giây  - Thiết kế vuông vức, sang trọng, cao cấp nhưng vẫn đầy mạnh mẽ  - Màn hình lớn 16 inch, độ phân giải lên tới 2K, tần số quét 165Hz chiến mọi tựa game tốc độ bao phê, bao mượt. Cùng với đó, màn máy cũng chuẩn màu 100% sRGB cho hiển thị siêu sống động  - Tản nhiệt cực mát với nhiều ống lưu thông lớn giúp máy luôn mát mẻ dù chơi game liên tục trong nhiều giờ liền  - Bàn phím RGB 4 vùng cực ngầu, đúng chất gaming', 8, 9, 0),
('9', 'Laptop Lenovo Legion 5 Pro 16IRX8 82WK00APVN', 'anh6.png', 46990000, '- Hiệu năng siêu mạnh mẽ với cấu hình Max Ping: Intel Core i9 - 13900HX + card đồ họa RTX 4060 8GB giúp cân mượt mọi tựa game nặng như: GTA V, Tomb Raider, FiFa 22,... hoặc làm đồ họa Photoshop, Ai, Premiere, 3Ds Max, Sketchup, Maya… render video siêu mượt mà     - Màn hình cho trải nghiệm cực đỉnh với độ phân giải WQXGA, chuẩn màu 100% sRGB, tần số quét siêu ấn tượng 240Hz cho chuyển động siêu mượt không lag giật khi chơi các tựa game nặng,...     - Tản nhiệt mạnh mẽ, hoàn toàn có thể chiến game hay làm đồ họa nặng liên tiếp trong nhiều giờ liền mà không bị nóng máy.     - Thiết kế bền bỉ, đơn giản, nhưng vẫn hút mắt, đậm chất gaming     - Cổng kết nối đa dạng, đáp ứng mọi nhu cầu', 1, 10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizesp`
--

CREATE TABLE `sizesp` (
  `idsize` int(11) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sizesp`
--

INSERT INTO `sizesp` (`idsize`, `size`) VALUES
(1, '14inch'),
(2, '15inch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `spbienthe`
--

CREATE TABLE `spbienthe` (
  `id_bt` int(11) NOT NULL,
  `id_sp` varchar(11) NOT NULL,
  `id_size` int(1) NOT NULL,
  `id_mau` int(1) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `spbienthe`
--

INSERT INTO `spbienthe` (`id_bt`, `id_sp`, `id_size`, `id_mau`, `soluong`) VALUES
(46, '1', 1, 1, 50),
(47, '1', 2, 2, 50),
(48, '1', 1, 2, 50),
(49, '1', 2, 1, 50),
(50, '2', 1, 1, 50),
(51, '2', 2, 2, 50),
(52, '2', 1, 2, 50),
(53, '2', 2, 1, 50),
(54, '3', 1, 1, 50),
(55, '3', 2, 2, 50),
(56, '3', 1, 2, 50),
(57, '3', 2, 1, 50),
(58, '4', 1, 1, 50),
(59, '4', 2, 2, 50),
(60, '4', 1, 2, 50),
(61, '4', 2, 1, 50),
(62, '5', 1, 1, 50),
(63, '5', 2, 2, 50),
(64, '5', 1, 2, 50),
(65, '5', 2, 1, 50),
(66, '6', 1, 1, 50),
(67, '6', 2, 2, 51),
(68, '6', 1, 2, 50),
(69, '6', 2, 1, 50),
(70, '7', 1, 1, 50),
(71, '7', 2, 2, 50),
(72, '7', 1, 2, 50),
(73, '7', 2, 1, 50),
(74, '8', 1, 1, 50),
(75, '8', 2, 2, 52),
(76, '8', 1, 2, 50),
(77, '8', 2, 1, 50),
(78, '9', 1, 2, 49),
(79, '9', 2, 1, 50),
(80, '10', 1, 2, 50),
(81, '10', 2, 1, 50),
(82, '11', 1, 2, 50),
(83, '11', 2, 1, 50),
(84, '12', 1, 2, 50),
(85, '12', 2, 1, 50),
(86, '13', 1, 2, 50),
(87, '13', 2, 1, 50),
(88, '9', 1, 1, 50),
(89, '9', 2, 2, 49),
(90, '10', 1, 1, 50),
(91, '10', 2, 2, 50),
(92, '11', 1, 1, 50),
(93, '11', 2, 2, 50),
(94, '12', 1, 1, 50),
(95, '12', 2, 2, 50),
(96, '13', 1, 1, 50),
(97, '13', 2, 2, 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT 2,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `pass`, `email`, `diachi`, `sdt`, `id_role`, `is_delete`) VALUES
(3, 'lam', '123456', 'ptlam120204@gmail.com', 'số 1 Trịnh Văn Bô', '0123456789', 1, 1),
(9, 'lam', '123456', 'lamptph32198@fpt.edu.vn', '123 Nam từ liêm', '123456', 2, 1),
(28, 'sdfgh', 'sdfgh', 'sdfgh', 'ádfgh', '23456', 1, 1),
(30, 'lam', '123456', 'ptlam120204@gmail.com', 'số 1 Trịnh Văn Bô', '0123456789', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaidh`
--

CREATE TABLE `trangthaidh` (
  `idtrangthai` int(11) NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  `is_delete` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthaidh`
--

INSERT INTO `trangthaidh` (`idtrangthai`, `trangthai`, `is_delete`) VALUES
(1, 'Đang xử lý', 1),
(2, 'Đang giao hàng', 1),
(3, 'Hoàn tất', 1),
(4, 'Hủy đơn hàng', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_bill_taikhoan` (`id_user`),
  ADD KEY `lk_bill_phuongthuctt` (`id_pttt`),
  ADD KEY `lk_bill_trangthaidh` (`id_trangthai`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `lk_binhluan_taikhoan` (`id_user`),
  ADD KEY `lk_binhluan_sanpham` (`id_sp`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_cart_bill` (`id_bill`),
  ADD KEY `lk_cart_taikhoan` (`id_user`),
  ADD KEY `lk_cart_sanpham` (`id_sp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mausp`
--
ALTER TABLE `mausp`
  ADD PRIMARY KEY (`idmau`);

--
-- Chỉ mục cho bảng `phuongthuctt`
--
ALTER TABLE `phuongthuctt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`id_dm`);

--
-- Chỉ mục cho bảng `sizesp`
--
ALTER TABLE `sizesp`
  ADD PRIMARY KEY (`idsize`);

--
-- Chỉ mục cho bảng `spbienthe`
--
ALTER TABLE `spbienthe`
  ADD PRIMARY KEY (`id_bt`),
  ADD KEY `lk_spbienthe_mausp` (`id_mau`),
  ADD KEY `lk_spbienthe_sizesp` (`id_size`),
  ADD KEY `lk_spbienthe_sanpham` (`id_sp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_taikhoan_role` (`id_role`);

--
-- Chỉ mục cho bảng `trangthaidh`
--
ALTER TABLE `trangthaidh`
  ADD PRIMARY KEY (`idtrangthai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `mausp`
--
ALTER TABLE `mausp`
  MODIFY `idmau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phuongthuctt`
--
ALTER TABLE `phuongthuctt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sizesp`
--
ALTER TABLE `sizesp`
  MODIFY `idsize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `spbienthe`
--
ALTER TABLE `spbienthe`
  MODIFY `id_bt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `trangthaidh`
--
ALTER TABLE `trangthaidh`
  MODIFY `idtrangthai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `lk_bill_phuongthuctt` FOREIGN KEY (`id_pttt`) REFERENCES `phuongthuctt` (`id`),
  ADD CONSTRAINT `lk_bill_taikhoan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `lk_bill_trangthaidh` FOREIGN KEY (`id_trangthai`) REFERENCES `trangthaidh` (`idtrangthai`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `lk_binhluan_sanpham` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `lk_binhluan_taikhoan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `lk_cart_sanpham` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `lk_cart_taikhoan` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`id_dm`) REFERENCES `danhmuc` (`id`);

--
-- Các ràng buộc cho bảng `spbienthe`
--
ALTER TABLE `spbienthe`
  ADD CONSTRAINT `lk_spbienthe_mausp` FOREIGN KEY (`id_mau`) REFERENCES `mausp` (`idmau`),
  ADD CONSTRAINT `lk_spbienthe_sanpham` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `lk_spbienthe_sizesp` FOREIGN KEY (`id_size`) REFERENCES `sizesp` (`idsize`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `lk_taikhoan_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
