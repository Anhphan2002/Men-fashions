-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2024 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_answer`
--

CREATE TABLE `tbl_answer` (
  `answer_id` int(11) NOT NULL,
  `rt_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Đỏ'),
(2, 'Đen'),
(3, 'Nâu'),
(4, 'Vàng'),
(5, 'Xanh lá'),
(6, 'Trắng'),
(7, 'Cam'),
(8, 'Xanh dương'),
(9, 'Hồng'),
(10, 'Hỗn hợp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Vietnam'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` mediumtext NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` mediumtext NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` mediumtext NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`, `profile_pic`) VALUES
(11, 'phan anh', 'công ty tnhh phananh', 'phananh@gmail.com', '0123456', 1, 'hồ tây', 'hà nội', 'ok', '123456', 'phananh', 'công ty tnhh phananh', '123456', 1, 'hồ tây', 'hà nội', 'active', '123456', 'phananh', 'công ty tnhh phananh', '123456', 1, 'hồ tây', 'hà nội', 'active', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'c3475ae58c99f1811b458e234e10b1a4', '2024-04-21 08:56:21', '1713758493', 1, 'assets/uploads/logo.jpg'),
(13, 'anh phan', 'công ty tnhh phananh', 'khachhang@gmail.com', '0123456', 1, 'hà nội', 'hà nội', 'hà đông', '123456', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '08f437d18a2dd47784c194bf925d024f', '2024-06-21 04:53:34', '1718970814', 1, 'assets/uploads/logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `order_detail` mediumtext NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(15, 'phananh@gmail.com', 'shop xin xác nhận đơn hàng ạ', '\n                Customer Name: phan anh<br>\n                Customer Email: phananh@gmail.com<br>\n                Payment Method: PayPal<br>\n                Payment Date: 2024-06-12 09:44:34<br>\n                Payment Details: <br>\n                    Transaction Id: <br>\n        		<br>\n                Paid Amount: 109<br>\n                Payment Status: Pending<br>\n                Shipping Status: Pending<br>\n                Payment Id: 1718160274<br>\n            \n                <br><b><u>Product Item 1</u></b><br>\n                Product Name: [A126]Mũ Lưỡi Trai Nón Kết DSQUARED In Đè 5 Màu Vải Kaki Cotton Màu Đen <br>\n                Size: Free Size<br>\n                Color: Black<br>\n                Quantity: 1<br>\n                Unit Price: 9<br>\n            ', 11),
(12, 'phananh@gmail.com', 'chúc mừng', '\nCustomer Name: phan anh<br>\nCustomer Email: phananh@gmail.com<br>\nPayment Method: Bank Deposit<br>\nPayment Date: 2024-04-22 20:16:40<br>\nPayment Details: <br>\nTransaction Details: <br>123<br>\nPaid Amount: 279<br>\nPayment Status: Completed<br>\nShipping Status: Pending<br>\nPayment Id: 1713842200<br>\n            \n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Amazfit GTS 3 Smart Watch for Android iPhone<br>\nSize: Free Size<br>\nColor: Black<br>\nQuantity: 1<br>\nUnit Price: 179<br>\n            ', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Mũ nón', 1),
(2, 'Kính dâm', 1),
(3, 'Đồng hồ', 1),
(4, 'Dép xăng đan', 2),
(5, 'Bốt', 2),
(7, 'Áo thun', 3),
(11, 'Giày thể thao', 2),
(16, 'Quần âu', 8),
(17, 'Quần bò', 8),
(18, 'Quần chạy bộ', 8),
(19, 'Quần bơi', 8),
(20, 'Áo thun', 9),
(21, 'Áo sơ mi đơn giản', 9),
(22, 'Áo sơ mi trang trọng', 9),
(23, 'Áo polo', 9),
(24, 'Áo khoác', 9),
(25, 'Giày đơn giản', 2),
(48, 'Tai nghe', 4),
(49, 'Phụ kiện khác', 4),
(56, 'Giày trang trọng', 2),
(57, 'Thắt lưng', 1),
(58, 'Tai nghe', 1),
(59, 'Phụ kiện khác', 1),
(80, 'Quần ngủ', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Làm thế nào để tìm mặt hàng?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\"><b>Chúng tôi có một loạt các sản phẩm tuyệt vời để lựa chọn</b>. </span></font></h3>\r\n<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 1: Nếu bạn đang tìm kiếm một sản phẩm cụ thể, hãy sử dụng hộp tìm kiếm từ khóa nằm ở đầu trang web. Đơn giản chỉ cần gõ những gì bạn đang tìm kiếm, và chuẩn bị để được ngạc nhiên!</span></font></h3><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\">\r\n<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Mẹo 2: Nếu bạn muốn khám phá một danh mục sản phẩm, hãy sử dụng Danh mục cửa hàng ở menu phía trên và điều hướng qua các danh mục yêu thích của bạn, nơi chúng tôi sẽ giới thiệu các sản phẩm tốt nhất trong mỗi danh mục.</span></font><br><br></h3>\r\n</font>'),
(2, 'Chính sách hoàn trả của bạn là gì?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Bạn có 15 ngày để thực hiện yêu cầu hoàn tiền sau khi đơn đặt hàng của bạn đã được giao.</span><br></p>\r\n'),
(3, 'Tôi đã nhận được một mặt hàng bị lỗi / hư hỏng, tôi có thể được hoàn lại tiền không?', '<p>Trong trường hợp mặt hàng bạn nhận được bị hư hỏng hoặc bị lỗi, bạn có thể trả lại một mặt hàng trong tình trạng tương tự như bạn đã nhận được với hộp và / hoặc bao bì ban đầu còn nguyên vẹn. Khi chúng tôi nhận được hàng trả lại, chúng tôi sẽ kiểm tra nó và nếu mặt hàng được phát hiện là bị lỗi hoặc hư hỏng, chúng tôi sẽ xử lý hoàn lại tiền cùng với bất kỳ khoản phí vận chuyển nào phát sinh.<br></p>\r\n'),
(4, 'Khi nào không thể \'Trả hàng\'?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Có một số trường hợp nhất định mà chúng tôi khó hỗ trợ trả lại:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Yêu cầu trả hàng được thực hiện ngoài khung thời gian quy định, là 15 ngày kể từ ngày giao hàng.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm đã qua sử dụng, bị hư hỏng hoặc không ở trong tình trạng giống như bạn đã nhận được.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các danh mục cụ thể như đồ trong, đồ lót, vớ và quần áo miễn phí, v.v.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm bị lỗi được bảo hành theo bảo hành của nhà sản xuất.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Bất kỳ vật phẩm tiêu hao nào đã được sử dụng hoặc lắp đặt.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Sản phẩm bị giả mạo hoặc thiếu số sê-ri.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Bất cứ thứ gì còn thiếu trong gói bạn đã nhận được bao gồm thẻ giá, nhãn, bao bì gốc, quà tặng miễn phí và phụ kiện.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Các vật dụng dễ vỡ, các vật dụng liên quan đến vệ sinh.</li></ol>\r\n'),
(5, 'Các mặt hàng không thể trả lại là gì?', '<p>Các mặt hàng không thể trả lại là:</p><p>Các mặt hàng thông quan được đánh dấu rõ ràng như vậy và hiển thị Chính sách Không hoàn trả<br></p><p>Khi ghi chú đề nghị nêu rõ như vậy cụ thể là các mặt hàng không thể trả lại.</p><p>Các mặt hàng thuộc các loại sản phẩm dưới đây-</p><ul><li>Underwear</li><li>Lingerie</li><li>Socks</li><li>Software</li><li>Music albums</li><li>Books</li><li>Swimwear</li><li>Beauty &amp; Fragrances</li><li>Hosiery</li></ul><p>Ngoài ra, bất kỳ mặt hàng tiêu hao nào được sử dụng hoặc cài đặt đều không thể được trả lại. Như đã nêu trong Quyền bảo vệ người tiêu dùng và phần liên quan đến các mặt hàng không thể trả lại<br></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'đ'),
(2, 'Tìm kiếm sản phẩm', 'Tìm kiếm sản phẩm'),
(3, 'Tìm kiếm', 'Tìm kiếm'),
(4, 'Đăng nhập', 'Đăng nhập'),
(5, 'Cập nhật', 'Cập nhật'),
(6, 'Đọc thêm', 'Đọc thêm'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Đăng nhập', 'Đăng nhập'),
(10, 'Đăng nhập cộng tác viên', 'Đăng nhập cộng tác viên'),
(11, 'Nhấn vào đây để đăng nhập', 'Nhấn vào đây để đăng nhập'),
(12, 'Quay lại trang đăng nhập', 'Quay lại trang đăng nhập'),
(13, 'Đăng nhập với tư cách', 'Đăng nhập với tư cách'),
(14, 'Đăng xuất', 'Đăng xuất'),
(15, 'Đăng ký', 'Đăng ký'),
(16, 'Đăng ký cộng tác viên', 'Đăng ký cộng tác viên'),
(17, 'Đăng ký thành công', 'Đăng ký thành công'),
(18, 'Giỏ hàng', 'Giỏ hàng'),
(19, 'View Cart', 'View Cart'),
(20, 'Cập nhật giỏ hàng', 'Cập nhật giỏ hàng'),
(21, 'Quay lại giỏ hàng', 'Quay lại giỏ hàng'),
(22, 'Thanh toán', 'Thanh toán'),
(23, 'Tiến hành thanh toán ', 'Tiến hành thanh toán '),
(24, 'Đơn hàng', 'Đơn hàng'),
(25, 'Lịch sử đơn hàng', 'Lịch sử đơn hàng'),
(26, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Phần thanh toán', 'Phần thanh toán'),
(34, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán'),
(35, 'Chọn phương thức', 'Chọn phương thức'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Tài khoản ngân hàng', 'Tài khoản ngân hàng'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Gửi đến tài khoản ngân hàng này', 'Gửi đến tài khoản ngân hàng này'),
(44, 'Thông tin giao dịch', 'Thông tin giao dịch'),
(45, 'Bao gồm mã giao dịch và các thông tin khác một cách chính xác', 'Bao gồm mã giao dịch và các thông tin khác một cách chính xác'),
(46, 'Thanh toán ngay', 'Thanh toán ngay'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Thể loại', 'Thể loại'),
(50, 'Danh mục:', 'Danh mục:'),
(51, 'Tất cả sản phẩm thuộc', 'Tất cả sản phẩm thuộc'),
(52, 'Chọn kích cỡ', 'Chọn kích cỡ'),
(53, 'Chọn màu', 'Chọn màu'),
(54, 'Giá sản phẩm', 'Giá sản phẩm'),
(55, 'Số lượng', 'Số lượng'),
(56, 'Hết hàng', 'Hết hàng'),
(57, 'Share This', 'Share This'),
(58, 'Chia sẻ sản phẩm này', 'Chia sẻ sản phẩm này'),
(59, 'Mô tả sản phẩm', 'Mô tả sản phẩm'),
(60, 'Đặc trưng', 'Đặc trưng'),
(61, 'Điều kiện', 'Điều kiện'),
(62, 'Chính sách hoàn trả', 'Chính sách hoàn trả'),
(63, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(64, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm'),
(65, 'Đưa ra đánh giá', 'Đưa ra đánh giá\r\n'),
(66, 'Viết bình luận của bạn (Tùy chọn)', 'Viết bình luận của bạn (Tùy chọn)'),
(67, 'Gửi đánh giá', 'Gửi đánh giá'),
(68, 'Bạn đã đưa ra một đánh giá!', 'Bạn đã đưa ra một đánh giá!'),
(69, 'Bạn phải đăng nhập để đưa ra đánh giá', 'Bạn phải đăng nhập để đưa ra đánh giá'),
(70, 'không tìm thấy mô tả', 'không tìm thấy mô tả'),
(71, 'Không tìm thấy tính năng nào', 'Không tìm thấy tính năng nào'),
(72, 'Không tìm thấy điều kiện', 'Không tìm thấy điều kiện'),
(73, 'Không tìm thấy chính sách hoàn trả', 'Không tìm thấy chính sách hoàn trả'),
(74, 'Không tìm thấy bài đánh giá', 'Không tìm thấy bài đánh giá'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Tổng phụ', 'Tổng phụ'),
(82, 'Tổng tiền', 'Tổng tiền'),
(83, 'Action', 'Action'),
(84, 'Chi phí vận chuyển ', 'Chi phí vận chuyển '),
(85, 'Tiếp tục mua sắm', 'Tiếp tục mua sắm'),
(86, 'Cập nhật địa chỉ thanh toán ', 'Cập nhật địa chỉ thanh toán '),
(87, 'Cập nhật địa chỉ giao hàng', 'Cập nhật địa chỉ giao hàng'),
(88, 'Cập nhật thông tin thanh toán và giao hàng', 'Cập nhật thông tin thanh toán và giao hàng'),
(89, 'Bảng điều khiển', 'Bảng điều khiển'),
(90, 'Chào mừng bạn đến với Bảng điều khiển', 'Chào mừng bạn đến với Bảng điều khiển'),
(91, 'Quay lại Bảng điều khiển', 'Quay lại Bảng điều khiển'),
(92, 'Đăng ký', 'Đăng ký'),
(93, 'ĐĂNG KÝ VÀO BẢN TIN CỦA CHÚNG TÔI', 'ĐĂNG KÝ VÀO BẢN TIN CỦA CHÚNG TÔI'),
(94, 'Địa chỉ email', 'Địa chỉ email'),
(95, 'Nhập địa chỉ email của bạn', 'Nhập địa chỉ email của bạn'),
(96, 'Mật khẩu', 'Mật khẩu'),
(97, 'Quên mật khẩu', 'Quên mật khẩu'),
(98, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu'),
(99, 'Cập nhật mật khẩu', 'Cập nhật mật khẩu'),
(100, 'Nhập mật khẩu mới', 'Nhập mật khẩu mới'),
(101, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới'),
(102, 'Họ và tên', 'Họ và tên'),
(103, 'Tên công ty', 'Tên công ty'),
(104, 'Số điện thoại', 'Số điện thoại'),
(105, 'Địa chỉ chi tiết', 'Địa chỉ chi tiết'),
(106, 'Quốc gia', 'Quốc gia'),
(107, 'Thành phố', 'Thành phố'),
(108, 'Tình trạng', 'Tình trạng'),
(109, 'Mã Bưu Chính', 'Mã Bưu Chính'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Liên hệ\r\n', 'Liên hệ\r\n'),
(116, 'Văn phòng của chúng tôi', 'Văn phòng của chúng tôi'),
(117, 'Cập nhật hồ sơ', 'Cập nhật hồ sơ'),
(118, 'Gửi tin nhắn', 'Gửi tin nhắn'),
(119, 'Tin nhắn', 'Tin nhắn'),
(120, 'Tìm chúng tôi trên bản đồ', 'Tìm chúng tôi trên bản đồ'),
(121, 'Chúc mừng! Thanh toán thành công.', 'Chúc mừng! Thanh toán thành công.'),
(122, 'Thông tin thanh toán và vận chuyển được cập nhật thành công.', 'Thông tin thanh toán và vận chuyển được cập nhật thành công.'),
(123, 'Tên khách hàng không thể trống.', 'Tên khách hàng không thể trống.'),
(124, 'Số điện thoại không thể trống.', 'Số điện thoại không thể trống.'),
(125, 'Địa chỉ không thể trống.', 'Địa chỉ không thể trống.'),
(126, 'Bạn phải chọn một quốc gia.', 'Bạn phải chọn một quốc gia.'),
(127, 'Thành phố không thể trống rỗng.', 'Thành phố không thể trống rỗng.'),
(128, 'Nhà nước không thể trống rỗng.', 'Nhà nước không thể trống rỗng.'),
(129, 'Mã Zip không thể trống.', 'Mã Zip không thể trống.'),
(130, 'Thông tin hồ sơ được cập nhật thành công.', 'Thông tin hồ sơ được cập nhật thành công.'),
(131, 'Địa chỉ Email không thể trống', 'Địa chỉ Email không thể trống'),
(132, 'Email hoặc Mật khẩu không thể trống.', 'Email hoặc Mật khẩu không thể trống.'),
(133, 'Địa chỉ Email không khớp.', 'Địa chỉ Email không khớp.'),
(134, 'Địa chỉ email phải hợp lệ.', 'Địa chỉ email phải hợp lệ.'),
(135, 'Địa chỉ email của bạn không được tìm thấy trong hệ thống của chúng tôi.', 'Địa chỉ email của bạn không được tìm thấy trong hệ thống của chúng tôi.'),
(136, 'Vui lòng kiểm tra email của bạn và xác nhận đăng ký của bạn.', 'Vui lòng kiểm tra email của bạn và xác nhận đăng ký của bạn.'),
(137, 'Email của bạn đã được xác minh thành công. Bây giờ bạn có thể đăng nhập vào trang web của chúng tôi.', 'Email của bạn đã được xác minh thành công. Bây giờ bạn có thể đăng nhập vào trang web của chúng tôi.'),
(138, 'Mật khẩu không thể trống.', 'Mật khẩu không thể trống.'),
(139, 'Mật khẩu không khớp.', 'Mật khẩu không khớp.'),
(140, 'Vui lòng nhập mới và nhập lại mật khẩu.', 'Vui lòng nhập mới và nhập lại mật khẩu.'),
(141, 'Mật khẩu được cập nhật thành công.', 'Mật khẩu được cập nhật thành công.'),
(142, 'Để đặt lại mật khẩu của bạn, vui lòng nhấp vào liên kết bên dưới.', 'Để đặt lại mật khẩu của bạn, vui lòng nhấp vào liên kết bên dưới.'),
(143, 'YÊU CẦU ĐẶT LẠI MẬT KHẨU - WEBSITE.COM CỦA BẠN', 'YÊU CẦU ĐẶT LẠI MẬT KHẨU - WEBSITE.COM CỦA BẠN'),
(144, 'Thời gian email đặt lại mật khẩu (24 giờ) đã hết hạn. Vui lòng thử đặt lại mật khẩu của bạn một lần nữa.', 'Thời gian email đặt lại mật khẩu (24 giờ) đã hết hạn. Vui lòng thử đặt lại mật khẩu của bạn một lần nữa.'),
(145, 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.'),
(146, 'Mật khẩu được đặt lại thành công. Bây giờ bạn có thể đăng nhập.', 'Mật khẩu được đặt lại thành công. Bây giờ bạn có thể đăng nhập.'),
(147, 'Địa chỉ email đã tồn tại.', 'Địa chỉ email đã tồn tại.'),
(148, 'Xin lỗi! Tài khoản của bạn không hoạt động. Vui lòng liên hệ với quản trị viên.', 'Xin lỗi! Tài khoản của bạn không hoạt động. Vui lòng liên hệ với quản trị viên.'),
(149, 'Change Password', 'Change Password'),
(150, 'Email xác nhận đăng ký cho TRANG WEB CỦA BẠN.', 'Email xác nhận đăng ký cho TRANG WEB CỦA BẠN.'),
(151, 'Cảm ơn bạn đã đăng ký! Tài khoản của bạn đã được tạo. Để kích hoạt tài khoản của bạn, hãy nhấp vào liên kết bên dưới:', 'Cảm ơn bạn đã đăng ký! Tài khoản của bạn đã được tạo. Để kích hoạt tài khoản của bạn, hãy nhấp vào liên kết bên dưới:'),
(152, 'Đăng ký của bạn đã hoàn tất. Vui lòng kiểm tra địa chỉ email của bạn để làm theo quy trình xác nhận đăng ký của bạn.', 'Đăng ký của bạn đã hoàn tất. Vui lòng kiểm tra địa chỉ email của bạn để làm theo quy trình xác nhận đăng ký của bạn.'),
(153, 'Không tìm thấy sản phẩm', 'Không tìm thấy sản phẩm'),
(154, 'Thêm vào giỏ hàng', 'Thêm vào giỏ hàng'),
(155, 'NHỮNG SẢM PHẨM TƯƠNG TỰ', 'NHỮNG SẢM PHẨM TƯƠNG TỰ'),
(156, 'Xem tất cả các sản phẩm liên quan từ bên dưới', 'Xem tất cả các sản phẩm liên quan từ bên dưới'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Vui lòng đăng nhập với tư cách khách hàng để thanh toán', 'Vui lòng đăng nhập với tư cách khách hàng để thanh toán'),
(161, 'Địa chỉ thanh toán', 'Địa chỉ thanh toán'),
(162, 'Địa chỉ giao hàng', 'Địa chỉ giao hàng'),
(163, 'Đánh giá đã được gửi thành công!', 'Đánh giá đã được gửi thành công!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Phụ kiện', 1),
(2, 'Giày và dép', 1),
(8, 'Quần', 1),
(9, 'Áo phông và áo sơ mi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(22, 104, '[A126]Mũ Lưỡi Trai Nón Kết DSQUARED In Đè 5 Màu Vải Kaki Cotton Màu Đen ', 'Free Size', 'Black', '2', '79.000', '1719219826');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` mediumtext NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` mediumtext NOT NULL,
  `about_meta_description` mediumtext NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` mediumtext NOT NULL,
  `faq_meta_description` mediumtext NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` mediumtext NOT NULL,
  `blog_meta_description` mediumtext NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` mediumtext NOT NULL,
  `contact_meta_description` mediumtext NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` mediumtext NOT NULL,
  `pgallery_meta_description` mediumtext NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` mediumtext NOT NULL,
  `vgallery_meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Về chúng tôi', '<p style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><span _msttexthash=\"23992475\" _msthash=\"57\" style=\"font-weight: 700;\">Chào mừng bạn đến với cửa hàng thời trang nam!</span></p><p style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><span _msttexthash=\"710968869\" _msthash=\"58\" style=\"border: 0px solid;\">Chúng tôi mong muốn cung cấp cho khách hàng của chúng tôi một loạt các sản phẩm mới nhất. Chúng tôi đã đi một chặng đường dài, vì vậy chúng tôi biết chính xác hướng đi nào khi cung cấp cho bạn các sản phẩm chất lượng cao nhưng thân thiện với ngân sách. Chúng tôi cung cấp tất cả những điều này trong khi cung cấp dịch vụ khách hàng tuyệt vời và hỗ trợ thân thiện.</span></p><p style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><span _msttexthash=\"374248602\" _msthash=\"59\" style=\"border: 0px solid;\">Chúng tôi luôn theo dõi các xu hướng mới nhất trong danh mục sản phẩm và đặt mong muốn của khách hàng lên hàng đầu. Đó là lý do tại sao chúng tôi đã làm hài lòng khách hàng trên toàn thế giới và rất vui mừng được trở thành một phần của ngành công nghiệp thời trang.</span></p><p style=\"margin-top: 1.5rem; margin-bottom: 0px; border: 0px solid;\"><span _msttexthash=\"128448424\" _msthash=\"60\" style=\"border: 0px solid;\">Lợi ích của khách hàng luôn là ưu tiên hàng đầu đối với chúng tôi, vì vậy chúng tôi hy vọng bạn sẽ thích sản phẩm của chúng tôi nhiều như chúng tôi thích cung cấp cho bạn.</span></p><p _msttexthash=\"222137435\" _msthash=\"61\">Chúng tôi đảm bảo bạn có được những bộ trang phục chất lượng tốt nhất với chính sách đổi trả miễn phí. Chúng tôi đảm bảo những gì bạn thấy là chính xác như những gì bạn nhận được!</p><ul style=\"margin-left: 20px;\"><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"3995680\" _msthash=\"62\" style=\"font-size: 14px;\">Đảm bảo giá thấp</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"2291965\" _msthash=\"63\" style=\"font-size: 14px;\">Hỗ trợ khách hàng 24/7</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"4273061\" _msthash=\"64\" style=\"font-size: 14px;\">E-mail - Nhắn tin - Gọi</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"22240764\" _msthash=\"65\" style=\"font-size: 14px;\">Chúng tôi ở đây hỗ trợ cho bạn 24/7 trực tuyến và qua điện thoại.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"4215770\" _msthash=\"66\" style=\"font-size: 14px;\">Kích thước và Màu sắc</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"8470852\" _msthash=\"67\" style=\"font-size: 14px;\">Vận chuyển trên toàn thế giới</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"20727863\" _msthash=\"68\" style=\"font-size: 14px;\">Chúng tôi muốn sớm mở rộng kinh doanh quốc tế.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"2692950\" _msthash=\"69\" style=\"font-size: 14px;\">Trả hàng dễ dàng</span></font></li></ul><p style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"127219235\" _msthash=\"70\" style=\"font-size: 14px;\">Mua một bộ trang phục nhưng muốn trả lại nó? Chúng tôi có chính sách hoàn trả dễ dàng trong 3 ngày. Vui lòng gửi thư cho chúng tôi theo địa chỉ tuananhpl01102001@gmail.com để biết thêm chi tiết.</span></font></p><p style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><span _msttexthash=\"11875305\" _msthash=\"71\" style=\"font-weight: 700;\">Những bộ đồ mơ ước cho mọi dịp</span></span></font></p><p style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"292708598\" _msthash=\"72\" style=\"font-size: 14px;\">Men fashions mang tất cả được lựa chọn cẩn thận bởi các nhà tạo mẫu của chúng tôi. Nếu bạn quan tâm đến một mô hình cụ thể, xin vui lòng gửi thư cho chúng tôi, chúng tôi sẽ cố gắng hết sức để cung cấp cho bạn bộ đồ yêu thích.</span></font></p><p style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><span _msttexthash=\"4236921\" _msthash=\"73\" style=\"font-weight: 700;\">Bảo mật đã được xác minh</span></span></font></p><p style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span _msttexthash=\"1744597855\" _msthash=\"74\" style=\"font-size: 14px;\">Tất cả các giao dịch của chúng tôi đều được xác minh và với các tiêu chuẩn bảo mật cao nhất. Thêm vào đó, có rất nhiều thứ để đi xung quanh thông qua các ưu đãi và quà tặng thú vị thường xuyên, vì vậy hãy truyền bá và giới thiệu chúng tôi với mọi người từ gia đình, bạn bè và đồng nghiệp của bạn và nhận phần thưởng cho nó. Và trên hết, bạn có thể chia sẻ trải nghiệm người dùng của mình bằng cách đăng bài đánh giá. Đừng chờ đợi lâu hơn Đăng ký với chúng tôi ngay bây giờ! bắt đầu rình rập, bắt đầu mua và bắt đầu yêu và bắt đầu giới thiệu vẻ đẹp trong bạn.</span></font></p>\r\n', 'about-banner.jpg', 'Men fashions - About Us', 'về, về chúng tôi, về thời trang, về công ty, về cửa hàng thời trang nam', 'Mục tiêu của chúng tôi luôn là để có được những điều tốt nhất trong bạn, chúng tôi đã mang đến một bộ sưu tập khổng lồ để tham dự một bữa tiệc, đám cưới và tất cả những sự kiện.', 'Câu hỏi liên quan', 'faq-banner.jpg', 'Men fashions - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên hệ với chúng tôi', 'contact-banner.jpg', 'Men fashions - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` datetime NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` float NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` mediumtext NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(75, 11, 'phan anh', 'phananh@gmail.com', '2024-06-24 16:03:46', '', 158, '', '', '', '', 'ok', 'Bank Deposit', 'Pending', 'Pending', '1719219826');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` mediumtext NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` float NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` mediumtext NOT NULL,
  `p_short_description` mediumtext NOT NULL,
  `p_feature` mediumtext NOT NULL,
  `p_condition` mediumtext NOT NULL,
  `p_return_policy` mediumtext NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(104, '[A126]Mũ Lưỡi Trai Nón Kết DSQUARED In Đè 5 Màu Vải Kaki Cotton Màu Đen ', '89.000', 79, 96, 'product-featured-104.jpg', '<h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Kiểu dáng thể thao, màu sắc trẻ trung, phá cách.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>ĐỐI TƯỢNG: Nam và nữ.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>VÒNG ĐẦU: 52 cm - 59 cm </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>(MỨC CHUẨN: 54 cm  57 cm) phù hợp với hầu hết mọi đầu\r\nTem 7 màu đầy đủ, khóa đuôi tăng chỉnh kích thước, chi tiết có trong ảnh chụp sản phẩm\r\nVải dù nhập về được dệt, nhuộm màu bằng công nghệ hiện đại tạo ra màu sắc và chất lượng tuyệt hảo.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Vải dù có độ bền cao, nhẹ, thoáng mát, không thấm nước, ít bám bụi, dễ giặt, độ bền màu cao khi tiếp xúc với bức xạ.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Vải lót: Vải si cotton cao cấp nhập khẩu từ Hàn Quốc.\r\nVải cotton được dệt từ nguyên liệu chính là sợi cây bông kết hợp với nhiều nguyên phụ liệu thiên nhiên và nhân tạo.</b></span><b style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Tùy vào tỉ lệ và phương pháp dệt mà vải có những thuộc tính và chất lượng khác nhau.\r\n</b></h4><h4><b style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\">Da thật 100% nhập khẩu từ Ý, cam kết chất lượng sản phẩm đẹp như hình vì hình ảnh do shop tự chụp không chỉnh sửa\r\nPhụ kiện  khóa,</b></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>nút: Khóa  lỗ gió, làm từ hợp kim không gỉ, nhập khẩu từ Đài Loan\r\nĐược sản xuất bằng hợp kim không gỉ cao cấp, trải qua công nghệ xử lý bề mặt tiên tiến tăng độ bền màu, độ cứng.\r\nKhóa, lỗ thông gió trước khi gắn vào sản phẩm đều qua quy trình kiểm tra chất lượng nghiêm ngặt cùng bàn tay của\r\nnhững người thợ lành nghề tạo ra những mẫu mã sản phẩm có chất lượng vượt trội.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Đội vào trông đẳng cấp, cá tính, mạnh mẽ\r\nThiết kế ôm đầu, có thể điều chỉnh, vành đai thấm mồ hôi tốt\r\nĐảm bảo sẽ tạo cho bạn một cái nhìn đẹp, phong cách, cá tính khi đội\r\nCam kết giá tốt vừa túi tiền khi shop là nhà phân phối, với mẫu mã và chất lượng phù hợp\r\nVới chất liệu dù thoáng mát, không tạo cảm giác hầm bí khi đội, cho bạn thoải mái diện trong các hoạt động hằng ngày.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Cam kết sản phẩm chất lượng, đẹp như hình\r\nNhận hàng -> Kiểm hàng -> Thanh toán (đổi trả miễn phí 7 ngày nếu không vừa ý)</b></span></h4>', '', '<h4 style=\"color: rgb(0, 0, 0);\"><span times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\" style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-weight: 700;\">Vải dù có độ bền cao, nhẹ, thoáng mát, không thấm nước, ít bám bụi, dễ giặt, độ bền màu cao khi tiếp xúc với bức xạ.</span></span></h4><h4 style=\"color: rgb(0, 0, 0);\"><span times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\" style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-weight: 700;\">Vải lót: Vải si cotton cao cấp nhập khẩu từ Hàn Quốc. Vải cotton được dệt từ nguyên liệu chính là sợi cây bông kết hợp với nhiều nguyên phụ liệu thiên nhiên và nhân tạo.</span></span><span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-weight: 700; color: rgba(0, 0, 0, 0.8);\">Tùy vào tỉ lệ và phương pháp dệt mà vải có những thuộc tính và chất lượng khác nhau.</span></h4>', '<h4 style=\"color: rgb(0, 0, 0);\"><span times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\" style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-weight: 700;\">(MỨC CHUẨN: 54 cm 57 cm) phù hợp với hầu hết mọi đầu Tem 7 màu đầy đủ, khóa đuôi tăng chỉnh kích thước, chi tiết có trong ảnh chụp sản phẩm Vải dù nhập về được dệt, nhuộm màu bằng công nghệ hiện đại tạo ra màu sắc và chất lượng tuyệt hảo.</span></span></h4>', '<h4 style=\"color: rgb(0, 0, 0);\"><span times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\" style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-weight: 700;\">Cam kết sản phẩm chất lượng, đẹp như hình Nhận hàng -> Kiểm hàng -> Thanh toán (đổi trả miễn phí 7 ngày nếu không vừa ý)</span></span></h4>', 240, 1, 1, 1),
(105, 'Kính mắt nam gọng tròn thời trang , Mắt kính râm đường phố chống tia UV_k812 Shop377', '109.000', 99, 100, 'product-featured-105.jpg', '<h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>Kính mắt nam gọng tròn thời trang , Mắt kính râm đường phố chống tia UV_k812\r\n\r\n?</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>CHÍNH SÁCH </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b> * Shop cam kết 100% sản phẩm là ảnh shop tự chụp , quý khách hoàn toàn yên tâm sử dụng sản phẩm.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Tư vấn, hỗ trợ giải đáp thắc mắc nhanh chóng 24/7\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Về dịch vụ: Shop sẽ cố gắng phản hồi mọi thắc mắc của quý khách nhanh nhất có thể\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Thời gian chuẩn bị hàng: Hàng có sẵn, thời gian chuẩn bị tối ưu nhất. </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n \r\n* Bộ sản phẩm gồm:\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Hộp Kính.</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Khăn Lau Kính. </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>                                                 \r\n  \r\n * Thông tin sản phẩm kính mắt  : Gọng kính mắt nam nữ\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b> • Kính thước : </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Mắt kính : 53mm </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b> \r\n  - Cầu kính : 25mm </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b> \r\n  - Càng kính: 133mm </b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Gọng kính: Gọng nhựa cao cấp < Độ bên cao-Không kích ứng da >\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Mắt kính   : Mắt kính phân cực hạt polycacbon cap cấp chống tia uv 400.</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Tất cả các sản phẩm kính bên shop đều được tặng kèm hộp kính và khăn lau kính.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n * Gợi ý cách chọn mắt kính  sao  cho phù hợp với từng khuôn mặt.\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Khuôn mặt tròn: Nên chọn những kính mắt có hình vuông hoặc hình chữ nhật sẽ khiến gương mặt trở nên thanh \r\n                               thoát và thon gọn hơn.</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Khuôn mặt vuông: Mắt kính gọng tròn sẽ khắc phục được nhược điểm thô kệch , loại bỏ nét cứng trên khuôn mặt.</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Khuôn mặt trái xoan: Được coi là gương mặt quốc dân phù hợp với tất cả các loại kính mắt.</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n\r\n * Quy định bảo hành kính mắt :</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Thời gian bảo hành 3 tháng</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Đổi trả trong òng 7 ngày nếu lỗi do NSX hoặc shop sẽ hoàn tiền lại  cho khách\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n * Trường hợp quý khách nên tránh để không bị từ chối bảo hành\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  + Vỡ gãy do va chạm hoặc hư hại trong quá trình sử dụng\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  + Tự  ý thay đổi ,  sửa chữa khi còn bảo hành\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n * thời gian giao nhận kính mắt nam nữ\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Chú ý < Lễ tết hoặc đợt sale lớn sẽ lâu hơn >\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Khu vực TP.Hồ Chí Minh / Hà Nội :01-03 Ngày làm việc\r\n</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>  - Khu vực còn lại:02-05 Ngày làm việc</b></span></h4><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>\r\n  - Thời gian giao nhận không tính các ngày cuối tuần ,  lễ tết</b></span></h4>', '', '', '', '', 31, 1, 1, 2),
(106, 'Đồng hồ nam ECONOMICXI dây thép lưới đen cao cấp có lịch ngày (full hộp)', '219.000', 199, 100, 'product-featured-106.jpg', '<h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">THÔNG TIN NỔI BẬT:<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Kiểu dáng năng động và lịch lãm<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Kính tráng cường lực cao cấp chống trầy xước cực phải chăng<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Đồng hồ và hộp chứa sang trọng nên rất thích hợp để làm cho quà tặng<br></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n✔ Không sở hữu bất kì 1 tì vết hay lỗi nhỏ nào trên sản phẩm<br></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n-----------------------------------------------------------------------------------<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">➡ THÔNG TIN SẢN PHẨM :<br> </span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n✔ Đồng Hồ Nam: ECONOMICXI<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Độ chống nước: 1ATM cơ bản: đi mưa nhỏ, rửa tay ok<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Dây thép mành đen<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Khoá bấm cao cấp<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Kích thước mặt: đường kính 40mm<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Chiều dày mặt: ~10mm<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Kích thước dây: dài 24 cm<br> </span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n✔ Độ rộng dây: 2 cm<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Số Kim: Chạy 3 kim (giờ, phút, giầy) và lịch ngày<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Máy: Quartz<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Mặt kính: cường lực cao cấp<br></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n✔ Pin sử dụng từ 18 tháng tới - 2 năm ( Hết pin có thể thay pin sd tiếp ạ )<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Giao hàng toàn quốc<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">✔ Bảo hành máy 12 tháng\r\n- Bộ sản phẩm bao gồm: 1 Đồng hồ và Hộp đựng .<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">-----------------------------------------------------------------------------------<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">➡ Những CAM KẾT khi mua tại Shop Volcano<br>\r\n</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"> Cam kết về sản phẩm: Sản phẩm này 100% giống hệt ảnh.<br></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">\r\n\r\n- Về size đồng hồ: Anh chị em mang thể giảm bớt mắt dây để đeo cho vừa tay nhé (giống như lên lai quần), vui lòng nhắn cho shop để được hướng dẫn cụ thể</span></h4>', '', '', '', '', 20, 1, 1, 3);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(107, 'Thắt lưng nam da cao cấp Dabaraac, mặt đính đá xoay 360 độ, khóa tự động sang trọng', '59.000', 49, 100, 'product-featured-107.jpg', '<h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">Thắt lưng nam da cao cấp Dabaraac, mặt đính đá xoay 360 độ, khóa tự động mạ kim sang trọng TL23</span><br><span style=\"font-family: \"Times New Roman\";\">\r\n</span></b></span><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\nTHÔNG TIN SẢN PHẨM<br></span></b></span><h4><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\n- Thiết kế : Mặt xoay đính đá khoá tự động<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Mã sản phẩm: TL23<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\n- Loại sản phẩm: Thắt lưng nam<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Chất liệu thắt lưng: Da Genuine leather 2 lớp<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Style: Hàn Quốc<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Kích thước:  3.5cm x 120cm( có thể điều chỉnh theo kích cỡ bụng từng người)<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Khóa vật liệu: hợp kim Nano chống xước, chống hoen rỉ<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\n- Kiểu khóa: Khóa tự động<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Với vật liệu da cao cấp lên dây rất mềm, độ bền cao.<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Thiết kê vô cùng tinh tế, Kiểu dáng hiện đại, sang trọng đầy nam tính thời thượng<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">----------------------------------------------------------------------------------<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">HƯỚNG DẪN SỬ DỤNG<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Dây lưng dài hơn vòng bụng, bạn tháo dây lưng chỗ đầu khóa > ướm với bụng > cắt bớt dây sao cho vừa bùng > lắp lại là được.<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\nMỤC ĐÍCH SỬ DỤNG<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">-  Đeo đi chơi, dạo phố, dự tiệc đều tạo một phong cách đầy cá tính sang trọng.<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Có thể dùng làm món quà tặng anh, em, bạn bè đồng nghiệp trong các dịp sự kiện, sinh nhật đều rất đẹp và ý nghĩa.<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">   \r\n- Đơn giản, ít cầu kì, nhưng vẫn trẻ trung, lịch sự và sang trọng là những ưu điểm nổi bật của những mẫu Thắt Lưng Nam Cao Cấp.<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\n\r\nCAM KẾT<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Sản phẩm 100% giống hình ảnh và mô tả<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Chất liệu da thật siêu bền<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Được kiểm tra kỹ càng, đóng gói cẩn thận trước khi gửi đến tay khách hàng<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">- Hàng có sẵn, giao ngay khi nhận được đơn<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b><span style=\"font-family: \"Times New Roman\";\">\r\n- Giao hàng toàn quốc, nhận hàng trả tiền<br></span></b></span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Times New Roman\";\" times=\"\" new=\"\" roman\";\"=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><b>- Hỗ trợ đổi trả theo quy định của Shopee\r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%</b></span></h4></h4></h4>', '', '', '', '', 14, 1, 1, 57),
(108, 'Tai nghe không dây Pro 13 Tws Tai nghe thể thao/tương thích Bluetooth có hộp sạc', '159.000', 149, 100, 'product-featured-108.jpg', '<h4 style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b style=\"\">Airpods Pro 13 Tai nghe không dây Tai nghe TWS Tai nghe thể thao tương thích với Bluetooth Tai nghe thể thao có hộp sạc Tai nghe không dây<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Mô tả:<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Thông số kỹ thuật:<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Phiên bản Bluetooth: V5.0<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Thời gian phục vụ tai nghe: 4 giờ<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Thời gian chờ lâu: 480 giờ<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Dung lượng pin ngăn sạc: 210 mAh<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Ngăn sạc thời gian sạc: 2 lần<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Khoảng cách không dây: 12m<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Thông số kỹ thuật:<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>Đặc điểm:<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>1. Tiêu thụ thấp V5.0.<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>2. Bật bluetooth để nhanh chóng kết nối với thiết bị Apple hoặc Android, hỗ trợ điện thoại di động, miếng đệm, máy tính xách tay và các thiết bị khác và các thiết bị khác có bluetooth.<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>3. Công tắc Master-slave: một tai nghe không phải là hộp đựng, tai nghe còn lại có thể tiếp tục một bài hát.<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>4. Tai nghe được đặt tự động trong khoang sạc và sạc cho trải nghiệm nghe một giờ.<br></b></span></span><span style=\"background-color: rgb(247, 247, 247);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";\"=\"\"><b>5. Chất lượng âm thanh HIFI, siêu to.</b></span></span></h4><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8);\"><span style=\"font-family: \" times=\"\" new=\"\" roman\";=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 247);\"=\"\"><b>\r\n</b></span></p><p><br></p>', '', '', '', '', 14, 1, 1, 58),
(110, 'Dép nam cao cấp da thật⚡FRESHIP⚡đế kếp siêu bền chống nước siêu tốt ', '199.000', 179, 100, 'product-featured-110.jpg', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space-collapse: preserve;\">DÉP DA HÈ .DA BÒ ĐẾ CAO SU CAM KẾT LÀM BẰNG DA BÒ\r\n❖ Đế cao su đúc liền có rãnh ngang chống trơn trượt khi đi mưa, rãnh ngang tạo độ đàn hồi giúp người dùng đi lại êm ái cả ngày.\r\n❖ quai dép làm từ da bò đi cực bền, đẹp, bóng, dễ dàng điều chỉnh ôm sát chân. \r\n❖ Chất da thật chuẩn chỉ, mùa hè khô thoáng, không hôi chân. \r\n❖ shop có  màu: nâu.\r\n❖ SP BÁN RA KÈM THẺ BẢO HÀNH 1 NĂM. DA BÒ BẢO HÀNH 1 NĂM NỔ DA ĐỔI MỚI.\r\n⛔️Mẫu Dép đang hót trên thị trường hiện nay.\r\n⛔️Dép dành cho các bạn trẻ - phong cách\r\n⛔️Quai dép được làm bằng da bò thật 100% ( bao test lửa ) rất mềm mại và bền bỉ.\r\n⛔️Đế được đúc bằng cao su nguyên chất với thiết kế nhiều rãnh ma sát tốt, chống trơn trượt hiệu quả. Thiết kế Dép khâu quai khiến tuổi thọ dép rất lâu và bền bỉ chắc chắn.\r\n⛔️Shop đủ size từ 38--->43</span><br></p>', '', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space-collapse: preserve;\">BẢNG ĐO SIZE CHUẨN VIỆT \r\n?Size 38  chiều dài chân ( 23,2 - 23,8 ) cm\r\n?Size 39 chiều dài chân ( 23,9 -24,5 ) cm\r\n?Size 40 chiều dài chân ( 24,6 - 25,3 ) cm\r\n?Size 41 chiều dài chân ( 25,4 - 26,1 )  cm\r\n?Size 42 chiều dài chân ( 26,2 -26,8 ) cm\r\n?Size 43 chiều dài chân ( 26,9 - 27,5 ) cm</span><br></p>', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space-collapse: preserve;\">?Sản phẩm: Chính Hãng</span><br></p>', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space-collapse: preserve;\">DÉP DA HÈ .DA BÒ ĐẾ CAO SU CAM KẾT LÀM BẰNG DA BÒ\r\n❖ Đế cao su đúc liền có rãnh ngang chống trơn trượt khi đi mưa, rãnh ngang tạo độ đàn hồi giúp người dùng đi lại êm ái cả ngày.\r\n❖ quai dép làm từ da bò đi cực bền, đẹp, bóng, dễ dàng điều chỉnh ôm sát chân. \r\n❖ Chất da thật chuẩn chỉ, mùa hè khô thoáng, không hôi chân. \r\n❖ shop có  màu: nâu.\r\n❖ SP BÁN RA KÈM THẺ BẢO HÀNH 1 NĂM. DA BÒ BẢO HÀNH 1 NĂM NỔ DA ĐỔI MỚI.</span><br></p>', 11, 1, 1, 4),
(111, 'Boots Nam Martin Cao Bồi cổ cao da bóng nâng đế chống nước mẫu mới', '299.000', 279, 100, 'product-featured-111.jpg', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Boots Nam Martin Cao Bồi cổ cao da bóng nâng đế chống nước mẫu mới  - 2SEVEN - G75</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">❣️❣️❣️? 2SEVEN - thời trang dành cho giới trẻ ?❣️❣️❣️</p><div class=\"QN2lPu\" style=\"margin: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\"><div style=\"position: relative; width: 873px; padding-bottom: 873px;\"><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\"> ?ƯU ĐIỂM NỔI BẬT: </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Tên sản phẩm: Giày nam sneaker </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Mã sản phẩm: G75</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Chất liệu: Da lộn cao cấp, mềm mại, không thấm nước, dễ lau chùi vệ sinh khi sử dụng.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Thiết kế: Cổ cao, ôm chân, mũi giày tròn, đế cao su tổng hợp chắc chắn chống trơn cực tốt, gót chân phẳng, tạo cảm giác thoải mái khi mang.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Dễ phối đồ thích hợp cho các hoạt động đi lại hàng ngày, chạy bộ, chạy dài.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Màu Sắc: 2 màu: Kaki và Đen.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">- Size: 39 - 44</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px;\">Vui lòng cho phép sai số kích thước nhỏ do sản phẩm được đo đạc bằng phương pháp thủ công, vui lòng đảm bảo kích thước phù hợp với bạn trước khi đặt hàng.</p></div></div>', '', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">?HƯỚNG DẪN SỬ DỤNG:</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Không sử dụng hóa chất tẩy rửa có hoạt tính mạnh																							</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Sử dụng bàn chải chuyên dụng mềm mại để tránh làm hỏng vải giày																						</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Tránh phơi giày trực tiếp dưới nắng gắt																									</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Không để giày ở nơi ẩm mốc cao																									</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Với giày trắng có thể bọc 1 lớp giấy vệ sinh sau khi giặt để giày không bị ố vàng</p>', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">?CAM KẾT 5C :</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cam kết 1: 2SEVEN là shop thời trang nam lớn và uy tín tại miền Bắc.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cam kết 2: Đảm bảo vải cotton 100% chất lượng sản phẩm.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cam kết 3: Hàng giống với mô tả, chất lượng đúng như thỏa thuận. </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cam kết 4: Tư vấn miễn phí 24/7 </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Cam kết 5: Giao hàng toàn quốc, đổi - trả trong vòng 7 ngày.</p>', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">?QUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ:</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Hàng hoá vẫn còn mới, chưa qua sử dụng. </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất. </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Hàng không đúng size, kiểu dáng như quý khách đặt hàng.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">2. Trường hợp không đủ điều kiện áp dụng chính sách: </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Quá 07 ngày kể từ khi Quý khách nhận hàng.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của 2SEVEN.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Nhãn mác, mã vạch không còn nguyên vẹn.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Sản phẩm đã chỉnh sửa, đã qua sử dụng.</p>', 4, 1, 1, 5),
(112, 'Giày Thể Thao Nam BLUEWIND Đế Cao Su Nguyên Khối Êm Mềm 68376', '349.000', 319, 100, 'product-featured-112.jpg', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Giày Thể Thao Nam BLUEWIND Đế Cao Su Nguyên Khối Êm Mềm 68376</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">LƯU Ý: Sản phẩm FORM NHỎ HƠN tiêu chuẩn, khách hàng có thể đặt LÊN 1 SIZE so với size thường đi</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">\r\n</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">???̂?? ??? ??? ???̂́?</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Mã: 68376</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Màu: Trắng Đen, Trắng Xám, Trắng Xanh</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Kiểu dáng: Giày thể thao dáng Hàn Quốc</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Chất liệu: </p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">+ Kiểu đế: Cao su nguyên khối</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">+ Thân giày: Vải dệt kim thông thoáng</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Độ cao: 3.5cm</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Nặng: Nữ-750gram, nam-850gram</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Size: 35-40</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Box: Fullbox</p>', '', '<p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">Đ?̣̆? Đ??̂̉? ??̉? ???̂̉?</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Chất liệu: Giày thể thao nam nữ được làm từ vải dệt kim thoáng khí cao cấp giúp duy trì sự thoải mái cho đôi chân trong mỗi hoạt - động hằng ngày</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Đế giày: Làm bằng cao su nguyên khối làm từ công nghệ cao cấp giúp tăng cường độ bám và linh hoạt, đế - cao 3,5cm thoải mái vận động.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Thiết kế kiểu dáng hiện đại: Giày thể thao nam nữ ôm vừa chân và tạo cảm giác thoải mái nhưng vẫn giữ được sự chắc chắn và ổn định.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Dây đeo tiện lợi: Dây giày chắc chắn và dễ điều chỉnh giúp bạn có thể tuỳ chỉnh độ co giãn và ôm sát theo ý muốn.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Phong cách đa dạng: Giày có nhiều màu sắc và hoạ tiết, phù hợp với nhiều phong cách thời gian và sở thích cá nhân.</p><p class=\"QN2lPu\" style=\"margin-bottom: 0px; color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space-collapse: preserve;\">- Phù hợp cho mọi hoạt động: Đi học, đi làm, đi chơi, dạo phố đến du lịch thì giày thể thao Bluewind luôn là sự lựa chọn hoàn hảo.</p>', '', '', 2, 1, 1, 11),
(113, 'Mũ Fedora Trilby Kẻ Sọc Cổ Điển Với Black Hatband Fedora Hat by Innovato Design', '199.000', 189, 100, 'product-featured-113.jpg', '<h4>Mặc thời trang kẻ sọc là một cách khác để kết hợp một cái gì đó hiện đại trong phong cách mặc trang phục của bạn từ dưới lên trên. </h4><h4>Một chiếc mũ kẻ sọc như thế này <br>Fedora Hat by Innovato Design là một tuyên bố thời trang mà bạn có thể đầu tư vào bản thân để trông hiện đại và sành điệu. Với phong cách vượt thời gian của nó, bạn sẽ không bao giờ sai khi mặc nó trong trang phục thường ngày của mình. Được làm từ chất liệu cotton, chiếc mũ này cho phép che đầu thoáng khí, giữ cho đầu bạn mát mẻ khi trời thực sự nóng. Nó không chỉ cho </h4>', '', '', '', '', 5, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(251, 2, 95),
(252, 6, 95),
(256, 2, 94),
(396, 2, 110),
(397, 3, 110),
(398, 8, 110),
(399, 2, 108),
(400, 6, 108),
(401, 7, 108),
(402, 8, 108),
(403, 11, 108),
(404, 2, 107),
(405, 4, 107),
(406, 6, 107),
(407, 2, 106),
(408, 2, 105),
(409, 3, 105),
(410, 6, 105),
(411, 2, 104),
(412, 2, 111),
(413, 3, 111),
(414, 8, 111),
(415, 2, 112),
(416, 3, 112),
(417, 8, 112),
(418, 11, 112),
(427, 2, 113),
(428, 3, 113),
(429, 6, 113),
(430, 10, 113);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(125, '125.jpg', 94),
(126, '126.jpg', 95),
(136, '136.jpg', 104),
(137, '137.jpg', 104),
(139, '139.jpg', 105),
(140, '140.jpg', 105),
(141, '141.jpg', 106),
(142, '142.jpg', 106),
(143, '143.jpg', 106),
(144, '144.jpg', 107),
(145, '145.jpg', 107),
(146, '146.jpg', 108),
(147, '147.jpg', 108),
(154, '154.jpg', 110),
(155, '155.jpg', 110),
(156, '156.jpg', 111),
(157, '157.jpg', 111),
(158, '158.jpg', 112),
(159, '159.jpg', 112),
(160, '160.jpg', 113),
(161, '161.jpg', 113),
(162, '162.jpg', 113);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(380, 27, 95),
(398, 33, 94),
(543, 15, 110),
(544, 16, 110),
(545, 17, 110),
(546, 18, 110),
(547, 19, 110),
(548, 27, 108),
(549, 26, 107),
(550, 26, 106),
(551, 26, 105),
(552, 26, 104),
(553, 16, 111),
(554, 17, 111),
(555, 18, 111),
(556, 19, 111),
(557, 20, 111),
(558, 16, 112),
(559, 17, 112),
(560, 18, 112),
(561, 19, 112),
(564, 27, 113);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_rating`
--

INSERT INTO `tbl_rating` (`rt_id`, `p_id`, `cust_id`, `comment`, `rating`) VALUES
(22, 104, 13, 'ok lắm các bro ới', 5),
(23, 104, 11, 'không ok lắm bro ơi', 3),
(24, 105, 11, 'kính đẹp lắm shop ơi', 5),
(25, 106, 11, 'đồng hồ đẹp lắm shop ơi', 5),
(26, 107, 11, 'đai lưng đẹp lắm shop ới', 5),
(27, 108, 11, 'tai nghe đẹp lắm shop ơi', 5),
(28, 110, 11, 'dép đẹp lắm shop ơi', 5),
(29, 111, 11, 'bốt đẹp lắm shop ơi', 5),
(30, 112, 11, 'giày đẹp lắm shop ơi', 5),
(31, 113, 11, 'mũ đẹp lắm shop ơi', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Trả hàng dễ dàng', 'Trả lại bất kỳ mặt hàng nào trước 15 ngày!', 'service-5.png'),
(6, 'Giao hàng miễn phí', 'Tận hưởng giao hàng miễn phí', 'service-6.png'),
(7, 'Vận chuyển nhanh', 'Các mặt hàng được vận chuyển trong vòng 24 giờ.', 'service-7.png'),
(8, 'Đảm bảo sự hài lòng', 'Chúng tôi đảm bảo bạn với sự hài lòng về chất lượng của chúng tôi.\r\n\r\n', 'service-8.png'),
(9, 'Thanh toán an toàn', 'Cung cấp Tùy chọn thanh toán an toàn cho tất cả mọi người', 'service-9.png'),
(10, 'Đảm bảo hoàn tiền', 'Cung cấp bảo đảm hoàn lại tiền cho các sản phẩm của chúng tôi', 'service-10.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` mediumtext NOT NULL,
  `footer_copyright` mediumtext NOT NULL,
  `contact_address` mediumtext NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` mediumtext NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` mediumtext NOT NULL,
  `forget_password_message` mediumtext NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` mediumtext NOT NULL,
  `meta_keyword_home` mediumtext NOT NULL,
  `meta_description_home` mediumtext NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` mediumtext NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` mediumtext NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` mediumtext NOT NULL,
  `before_head` mediumtext NOT NULL,
  `after_body` mediumtext NOT NULL,
  `before_body` mediumtext NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Men fashions_Developed by Anhphan - copyright 2024.', 'Số nhà 6, ngõ 15, đường Lam Sơn, phường Đồng Tâm, thành phố Vĩnh Yên, Vĩnh Phúc.', 'tuananhpl01102001@gmail.com', '123456789', '', '<iframe width=\"600\" height=\"450\" style=\"border:0\" loading=\"lazy\" allowfullscreen src=\"https://www.google.com/maps/embed/v1/place?q=place_id:ChIJD35YoxvwNDER35WcCBt-ACk&key=AIzaSyCTeP7XxNs--rwOpf48didqWR1QtGU3nAI\"></iframe>', 'tuananhpl01102001@gmail.com', 'Email khách truy cập từ trang web cửa hàng thời trang nam.', 'Cảm ơn bạn đã gửi email. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.', 'Một liên kết xác nhận được gửi đến địa chỉ email của bạn. Bạn sẽ nhận được thông tin đặt lại mật khẩu trong đó.', 4, 4, 5, 5, 8, 8, 8, 'Men fashions', 'cửa hàng thời trang trực tuyến.', 'Dự án PHP thương mại điện tử với cơ sở dữ liệu MySQL', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Chào mừng bạn đến với trang web cửa hàng thời trang của chúng tôi.', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Đọc thêm', '#', 'cta.jpg', 'Sản phẩm nổi bật', 'Danh sách của chúng tôi về các sản phẩm nổi bật hàng đầu', 'Sản phẩm mới nhất', 'Danh sách các sản phẩm được thêm gần đây của chúng tôi', 'Sản phẩm phổ biến', 'Sản phẩm phổ biến dựa trên sự lựa chọn của khách hàng', 'Ý kiến', 'Xem những gì khách hàng của chúng tôi nói về chúng tôi', 'testimonial.jpg', 'Blog mới nhất', 'Xem tất cả các bài viết và tin tức mới nhất của chúng tôi từ bên dưới', 'Đăng ký nhận bản tin của chúng tôi để biết các chương trình khuyến mãi và giảm giá mới nhất.', 'tuananhpl01102001@gmail.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Tên ngân hàng: VPBank\r\nTên người thụ hưởng: PHANANH\r\nSố tài khoản: 123456789\r\nQuốc gia: Việt Nam', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 120, '10'),
(2, 36, '20'),
(3, 174, '30'),
(4, 1, '0'),
(5, 216, '50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Chào mừng bạn đến với cửa hàng thời trang nam.', 'Mua sắm trực tuyến các phụ kiện nam mới nhất', 'Xem phụ kiện nam', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', 'Giảm giá 50% cho tất cả các sản phẩm', '', 'Đọc thêm ', '#', 'Center'),
(3, 'slider-3.png', 'Hỗ trợ khách hàng 24 giờ', '', 'Đọc thêm', '#', 'Right');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(11, 'phananh@gmail.com', '2024-04-24', '2024-04-24 02:05:29', 'a6be274b2a80ddfa54647371ab71daec', 1),
(14, 'your-email@gmail.com', '2024-06-23', '2024-06-23 03:34:37', '21f3148d85f60b28739cd06957e885bd', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Thời trang nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin1@mail.com', '123456789', 'e10adc3949ba59abbe56e057f20f883e', 'user-1.png', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_answer`
--
ALTER TABLE `tbl_answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `rt_id` (`rt_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Chỉ mục cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Chỉ mục cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Chỉ mục cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Chỉ mục cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Chỉ mục cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Chỉ mục cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Chỉ mục cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Chỉ mục cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Chỉ mục cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_answer`
--
ALTER TABLE `tbl_answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT cho bảng `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT cho bảng `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_answer`
--
ALTER TABLE `tbl_answer`
  ADD CONSTRAINT `tbl_answer_ibfk_1` FOREIGN KEY (`rt_id`) REFERENCES `tbl_rating` (`rt_id`),
  ADD CONSTRAINT `tbl_answer_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `tbl_customer` (`cust_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
