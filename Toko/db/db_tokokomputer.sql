-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2022 pada 12.10
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokokomputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ramadhanki', 'Rama', '1c0deec8b3fafaf6e24b386b85fa1661', '6281377594738', 'ramadhanki@gmail.com', 'Palembang, Sumatera Selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(11, 'ACER'),
(12, 'ASUS'),
(13, 'DELL'),
(14, 'HP'),
(15, 'LENOVO'),
(16, 'MSI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(20, 16, 'MSI Katana GF66 11UD [9S7-158212-894] i5-11400H 8GB 512GB RTX3050Ti 4G', 16999000, '<p>MSI Katana GF66 11UD [9S7-158212-894]<br />\r\nSpesifikasi:<br />\r\n- Tipe Grafis : NVIDIA GeForce&reg; RTX 3050Ti, 4GB GDDR6<br />\r\n- Processor Onboard : Intel&reg; Core&trade; i5-11400H Processor (12M Cache, up to 4.5 GHz, 6 Cores)<br />\r\n- Memori Standar : 8 GB DDR4 3200Mhz<br />\r\n- Ukuran Layar : 15.6&quot; FHD (1920*1080), 144Hz IPS-Level<br />\r\n- Storage : 512GB NVMe PCIe Gen3x4 SSD<br />\r\n- Chipset : Intel HM570<br />\r\n- Keyboard : Single Red Keyboard<br />\r\n- Kamera : HD type (30fps@720p)<br />\r\n- Wireless Network : Intel Wi-Fi 6 AX201(2*2 ax) + BlueTooth 5.1<br />\r\n- Interfaces : 1* Type-C USB3.2 Gen.1 2* Type-A USB3.2 Gen.1 1* Type-A USB2.0 1* HDMI 2.0 1 x RJ45<br />\r\n- Sistem Operasi : Windows 11 Home<br />\r\n- Batteray : 3 cell<br />\r\n- Dimension : 359 x 259 x 24.9 mm<br />\r\n- Berat : 2.25Kg<br />\r\n- Adapter : 120W adapter<br />\r\n- FREE MSI Essential Backpack<br />\r\n- Garansi Resmi MSI INDONESIA 1 TAHUN<br />\r\n- Teknologi eksklusif Cooler Boost 5, solusi termal untuk CPU dan GPU.<br />\r\n- Rasakan dan dengarkan audio sebagaimana mestinya dan bagikan melalui Nahimic in-game 3D surround &amp; Sound Sharing via Bluetooth.<br />\r\n- MSI Center eksklusif membantu untuk mengontrol dan menyesuaikan laptop MSI sesuai kebutuhan.<br />\r\n-Resizable BAR, fitur PCI Express yang memungkinkan CPU mengakses GPU, meningkatkan performa game.<br />\r\n- Tampilan game tercepat menghadirkan visual paling nyata sehingga tidak terkalahkan.</p>\r\n', 'produk1642088116.jpg', 1, '2020-05-19 01:58:18'),
(21, 16, 'MSI BRAVO 15 B5DD- [9S7-158K12-281] RYZEN 5-5600H 8GB 512GB RX5500M 4G', 13599000, '<p>MSI GF63 10SC [9S7-16R512-819] - Black<br />\r\n<br />\r\nSpesifikasi:<br />\r\n- Processor Onboard : Intel&reg; Core&trade; i5-10500H Processor (12M Cache, up to 4.50 GHz)<br />\r\n- Memori Standar : 8 GB DDR4<br />\r\n- Tipe Grafis : NVIDIA GeForce&reg; GTX 1650 4GB GDDR6<br />\r\n- Ukuran Layar : 15.6&quot; FHD (1920*1080), IPS-Level 144Hz Thin Bezel<br />\r\n- Storage : 512GB NVMe PCIe Gen3x4 SSD<br />\r\n- Chipset : Intel HM470<br />\r\n- Keyboard : Single Red Keyboard<br />\r\n- Kamera : HD type (30fps@720p)<br />\r\n- Wireless Network : Intel Wi-Fi 6 AX201(2*2 ax) + BT5.1<br />\r\n<br />\r\n- Interfaces :<br />\r\n1x Type-C USB3.1 Gen1<br />\r\n3x Type-A USB3.1 Gen1<br />\r\n1x RJ45<br />\r\n1x (4K @ 30Hz) HDMI<br />\r\n<br />\r\n- Sistem Operasi : Windows 10 Home<br />\r\n- Batteray : 3-Cell<br />\r\n- Dimension : 359 x 254 x 21.7 mm<br />\r\n- Adapter : 120W adapter<br />\r\n- FREE MSI Essential Backpack<br />\r\n- Garansi Resmi MSI INDONESIA 1 TAHUN</p>\r\n', 'produk1642086813.jpg', 1, '2020-05-19 01:58:38'),
(22, 16, 'MSI GE66 Raider 11UH [9S7-154314-486] i9-11980HK 32G 2TB RTX3080 16GB', 62999000, '<p>MSI GE66 Raider 11UH [9S7-154314-486]<br />\r\n<br />\r\nSpesifikasi:<br />\r\n- Processor Onboard : 11th Generation Intel&reg; Core&trade; i9-11980HK Processor (24M Cache, up to 5.00 GHz)<br />\r\n- Memori Standar : 32 GB DDR4 3200MHZ (16*2)<br />\r\n- Tipe Grafis : NVIDIA&reg; GeForce&reg; RTX3080 Laptop GPU, 16GB GDDR6 (165W)<br />\r\n- Ukuran Layar : 15.6&quot; OLED UHD (3840*2160), DCI-P3 100% Typical<br />\r\n- Storage : 2TB NVMe PCIe Gen4x4 SSD<br />\r\n- Chipset : Intel HM570<br />\r\n- Keyboard : Per key RGB steelseries KB<br />\r\n- Kamera : HD type (30fps@720p)<br />\r\n- Wireless Network : Killer Wi-Fi 6E AX1675+BT5.2<br />\r\n<br />\r\n- Interfaces :<br />\r\n1x Type-C (USB / DP / Thunderbolt&trade; 4)<br />\r\n1x Type-C USB3.2 Gen2<br />\r\n2x Type-A USB3.2 Gen1<br />\r\n1x Type-A USB3.2 Gen2<br />\r\n1x RJ45<br />\r\n1x SD Express<br />\r\n1x (8K @ 60Hz / 4K @ 120Hz) HDMI<br />\r\n1x Mini-DisplayPort<br />\r\n<br />\r\n- Sistem Operasi : Windows 10 Home<br />\r\n- Batteray : 4-Cell Li-Polymer 99.9<br />\r\n- Adapter : 230W Slim adapter<br />\r\n- Dimension : 358.3 x 248 x 18.3-19.8 mm<br />\r\n- Berat : 2.38kg<br />\r\n- FREE URBAN RAIDER BACKPACK<br />\r\n- Garansi Resmi MSI INDONESIA 2 TAHUN<br />\r\n<br />\r\n- Dilengkapi dengan Microsoft Office 365.<br />\r\n- Mystic Light dengan desain panorama aurora membentang luas di bagian depan sasis.<br />\r\n- Nikmati kemegahan dengan Duo Wave Speaker dalam sistem suara Dynaudio kelas dunia.<br />\r\n-Laptop PERTAMA DI DUNIA yang dilengkapi Wi-Fi 6E untuk kecepatan luar biasa saat mempertahankan kemulusan dan kestabilan jaringan.<br />\r\n- &quot;Discrete Graphics Mode&quot; atau &quot;MSHybrid Graphics Mode&quot; (NVIDIA Optimus), teknologi kartu grafis menawarkan efisiensi dan performa gaming menakjubkan.<br />\r\n- Solusi thermal Cooler Boost 5, dengan kipas besar dan heatpipe lebar memastikan performa maksimal ketika bermain.</p>\r\n', 'produk1642088319.jpg', 1, '2022-01-13 15:38:39'),
(23, 15, 'Lenovo Legion S7 15ACH6 AMD Ryzen 7 5800H 32GB 1TB SSD RTX3060 W11 OHS', 31499000, '<p>Lenovo Legion S7 15ACH6<br />\r\nModel : 82K8002WID<br />\r\nPERFORMANCE<br />\r\nProcessor: AMD Ryzen 7 5800H (8C / 16T, 3.2 / 4.4GHz, 4MB L2 / 16MB L3)<br />\r\nGraphics: NVIDIA GeForce RTX 3060 6GB GDDR6, Boost Clock 1282 / 1425MHz, TGP 100W<br />\r\nChipset: AMD SoC Platform<br />\r\nMemory: 16GB Soldered DDR4-3200 + 16GB SO-DIMM DDR4-3200<br />\r\nMemory Slots: One memory soldered to systemboard, one DDR4 SO-DIMM slot, dual-channel capable<br />\r\nMax Memory: Up to 32GB (16GB soldered + 16GB SO-DIMM) DDR4-3200 offering<br />\r\nStorage: 1TB SSD M.2 2280 PCIe 3.0x4 NVMe<br />\r\nStorage Support: Up to two drives, 2x M.2 SSD<br />\r\n&bull; M.2 2280 SSD up to 2TB<br />\r\nCard Reader: 4-in-1 Card Reader<br />\r\nOptical None<br />\r\nAudio Chip High Definition (HD) Audio, Realtek ALC3306 codec<br />\r\nSpeakers<br />\r\nStereo speakers, 2W x2, Nahimic Audio, Harman Speakers, Smart AMP<br />\r\nCamera 720p with Privacy Shutter<br />\r\nMicrophone 2x, Array<br />\r\nBattery Integrated 71Wh<br />\r\nMax Battery Life MobileMark 2018: 7.8 hr<br />\r\nPower Adapter 230W Slim Tip (3-pin)<br />\r\nDESIGN<br />\r\nDisplay 15.6&quot; WQHD (2560x1440) IPS 300nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, Free-Sync, G-Sync, DC dimmer<br />\r\nTouchscreen None<br />\r\nColor Calibrator No color calibration<br />\r\nKeyboard RGB Backlit, English<br />\r\nCase Color Shadow Black<br />\r\nSurface Treatment Anodizing<br />\r\nCase Material Aluminium (Top), Aluminium (Bottom)<br />\r\nDimensions (WxDxH) 356 x 252 x 15.9-18.9 mm (14.02 x 9.92 x 0.63-0.74 inches)<br />\r\nWeight 1.9 kg (4.19 lbs)<br />\r\nSOFTWARE<br />\r\nOperating System Windows 11 Home 64, English<br />\r\nBundled Software Office Home and Student 2021<br />\r\nCONNECTIVITY<br />\r\nEthernet None<br />\r\nWLAN + Bluetooth Killer Wi-Fi 6 AX1650 11ax, 2x2 + BT5.1<br />\r\nStandard Ports<br />\r\n1x Power connector<br />\r\n1x Card reader<br />\r\n1x USB 3.2 Gen 2<br />\r\n2x USB-C 3.2 Gen 2 (support data transfer, Power Delivery 100w and DisplayPort 1.4)<br />\r\n1x Headphone / microphone combo jack (3.5mm)<br />\r\n1x USB 3.2 Gen 2 (Always On)<br />\r\nMonitor Cable None<br />\r\nSECURITY &amp; PRIVACY<br />\r\nSecurity Chip Firmware TPM 2.0<br />\r\nFingerprint Reader Touch Style<br />\r\nOther Security Camera privacy shutter<br />\r\nSERVICE<br />\r\nBase Warranty<br />\r\n1-year, Depot<br />\r\nIncluded Upgrade<br />\r\n3Y ADP - IPPREM (ESS) (5PS0Z50062), 3Y Legion Ultimate Support -IPPREM</p>\r\n', 'produk1642126122.jpg', 1, '2022-01-14 02:08:42'),
(24, 15, 'Lenovo Legion 5 15ACH6H Ryzen 7 5800H 16GB 512SSD RTX 3060 WIN10 OHS', 24199000, '<p>Lenovo Legion 5 15ACH6H<br />\r\n82JU00F0ID<br />\r\n<br />\r\nThe Ultimate Play GeForce RTX 30 Series Laptop with 2nd Gen RTX (RT &amp; AI)<br />\r\n<br />\r\nProcessor AMD Ryzen 7 5800H (8C / 16T, 3.2 / 4.4GHz, 4MB L2 / 16MB L3)<br />\r\nGraphics NVIDIA GeForce RTX 3060 6GB GDDR6, Boost Clock 1425 / 1702MHz, TGP 130W<br />\r\nChipset AMD SoC Platform<br />\r\nMemory 2x 8GB SO-DIMM DDR4-3200<br />\r\nMemory Slots Two DDR4 SO-DIMM slots, dual-channel capable<br />\r\nStorage 512GB SSD M.2 2280 PCIe 3.0x4 NVMe<br />\r\nStorage Support &quot;Up to two drives, 2x M.2 SSD<br />\r\n&bull; M.2 2242 SSD up to 512GB<br />\r\n&bull; M.2 2280 SSD up to 1TB&quot;<br />\r\nCard Reader None<br />\r\nAudio Chip High Definition (HD) Audio, Realtek ALC3306 codec<br />\r\nSpeakers Stereo speakers, 2W x2, Nahimic Audio<br />\r\nCamera 720p with E-camera Shutter<br />\r\nMicrophone 2x, Array<br />\r\nBattery Integrated 80Wh<br />\r\nMax Battery Life MobileMark 2018: 9.2 hr (80Wh)<br />\r\nPower Adapter 300W Slim Tip (3-pin)<br />\r\nDESIGN<br />\r\nDisplay 15.6&quot; FHD (1920x1080) IPS 300nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, Free-Sync, G-Sync, DC dimmer<br />\r\nTouchscreen None<br />\r\nKeyboard 4-Zone RGB LED Backlit, English<br />\r\nCase Color Phantom Blue (Top), Shadow Black (Bottom)<br />\r\nSurface Treatment Painting<br />\r\nCase Material PC + ABS (Top), PC + ABS (Bottom)<br />\r\nDimensions (WxDxH) 362.56 x 260.61 x 22.5-25.75 mm (14.27 x 10.26 x 0.89-1.01 inches)<br />\r\nWeight 2.4 kg (5.3 lbs)<br />\r\nSOFTWARE<br />\r\nOperating System Windows 10 Home 64, English<br />\r\nBundled Software Office Home and Student 2019<br />\r\nCONNECTIVITY<br />\r\nEthernet 100/1000M<br />\r\nWLAN + Bluetooth 11ax, 2x2 + BT5.1<br />\r\nStandard Ports &quot;3x USB 3.2 Gen 1<br />\r\n1x Power connector<br />\r\n1x USB-C 3.2 Gen 2 (support data transfer, Power Delivery and DisplayPort 1.4)<br />\r\n1x Ethernet (RJ-45)<br />\r\n1x USB 3.2 Gen 1 (Always On)<br />\r\n1x USB-C 3.2 Gen 2 (support data transfer and DisplayPort 1.4)<br />\r\n1x Headphone / microphone combo jack (3.5mm)<br />\r\n1x HDMI 2.1&quot;<br />\r\nSECURITY &amp; PRIVACY<br />\r\nSecurity Chip Firmware TPM 2.0<br />\r\nFingerprint Reader None<br />\r\nOther Security E-Camera shutter<br />\r\nSERVICE<br />\r\nIncluded Upgrade 3Y ADP -IPMAIN(ESS) (5PS1D04072), 3Y Legion Ultimate Support<br />\r\nACCESSORIES<br />\r\nBundled Accessories Lenovo Legion M300 RGB Gaming Mouse</p>\r\n', 'produk1642126317.jpg', 1, '2022-01-14 02:11:57'),
(25, 15, 'Lenovo IdeaPad Gaming 3 15 Core i5-11300H 8 GB 512 SSD RTX 3050 4GB - 8 gb', 15499000, '<p>IdeaPad Gaming 3 15IHU6<br />\r\nModel : 82K100E2ID<br />\r\n<br />\r\nPERFORMANCE<br />\r\nProcessor Intel Core i5-11300H (4C / 8T, 3.1 / 4.4GHz, 8MB)<br />\r\nGraphics NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500 / 1740MHz, TGP 90W<br />\r\nChipset Intel SoC Platform<br />\r\nMemory 1x 8GB SO-DIMM DDR4-3200<br />\r\nMemory Slots Two DDR4 SO-DIMM slots, dual-channel capable<br />\r\nMax Memory Up to 16GB DDR4-3200 offering<br />\r\nStorage 512GB SSD M.2 2242 PCIe 3.0x4 NVMe<br />\r\nStorage Support &quot;Up to two drives, 1x 2.5&quot;&quot; HDD + 1x M.2 2242 SSD or 1x M.2 2242/2280 SSD + 1x M.2 2242 SSD<br />\r\n&bull; 2.5&quot;&quot; HDD up to 1TB<br />\r\n&bull; M.2 2242 SSD up to 512GB<br />\r\n&bull; M.2 2280 SSD up to 1TB&quot;<br />\r\nCard Reader None<br />\r\nOptical None<br />\r\nAudio Chip High Definition (HD) Audio, Realtek ALC3287 codec<br />\r\nSpeakers Stereo speakers, 2W x2, Nahimic Audio<br />\r\nCamera 720p with Camera Shutter<br />\r\nMicrophone 2x, Array<br />\r\nBattery Integrated 45Wh<br />\r\nMax Battery Life MobileMark 2014: 8 hr<br />\r\nPower Adapter 170W Slim Tip (3-pin)<br />\r\nDESIGN<br />\r\nDisplay 15.6&quot; FHD (1920x1080) IPS 300nits Anti-glare, 165Hz, 100% sRGB, DC dimmer<br />\r\nTouchscreen None<br />\r\nKeyboard 4-Zone RGB Backlit, English<br />\r\nCase Color Shadow Black<br />\r\nSurface Treatment IMR (In-Mold Decoration by Roller)<br />\r\nCase Material PC + ABS (Top), PC + ABS (Bottom)<br />\r\nDimensions (WxDxH) 359.6 x 251.9 x 24.2 mm (14.16 x 9.92 x 0.95 inches)<br />\r\nWeight 2.25 kg (4.96 lbs)<br />\r\nSOFTWARE<br />\r\nOperating System Windows 10 Home 64, English<br />\r\nBundled Software Office Home and Student 2019<br />\r\nCONNECTIVITY<br />\r\nEthernet 100/1000M<br />\r\nWLAN + Bluetooth 11ax, 2x2 + BT5.0<br />\r\nStandard Ports &quot;2x USB 3.2 Gen 1<br />\r\n1x USB-C 3.2 Gen 1 (support data transfer only)<br />\r\n1x HDMI 2.0<br />\r\n1x Ethernet (RJ-45)<br />\r\n1x Headphone / microphone combo jack (3.5mm)<br />\r\n1x Power connector&quot;<br />\r\nSECURITY &amp; PRIVACY<br />\r\nSecurity Chip Firmware TPM 2.0<br />\r\nFingerprint Reader None<br />\r\nOther Security Camera privacy shutter<br />\r\nWarranty 2Y ADP 2Y Premium Care -IPENTRY<br />\r\nACCESSORIES<br />\r\nBundled Accessories Lenovo IdeaPad Gaming M100 RGB Mouse<br />\r\nCERTIFICATIONS<br />\r\nGreen Certifications &quot;ErP Lot 3<br />\r\nRoHS compliant&quot;</p>\r\n', 'produk1642132154.jpg', 1, '2022-01-14 03:49:14'),
(26, 13, 'Alienware M15 R6 [Ci7-11800H-32-1T-NVD-W10-OHS-BLK] DELL OFFICIAL', 48099000, '<p>Deskripsi Produk :<br />\r\n&bull; 15.6&quot; QHD (2560 x 1440) 240Hz 2ms with ComfortView Plus, NVIDIA G-SYNC and Advanced Optimus<br />\r\n&bull; Intel&reg; Core&trade; i7-11800H Processor (24MB Cache, 8 Cores, up to 4.6 GHz)<br />\r\n&bull; 32GB DDR4 3200MHz<br />\r\n&bull; 1TB M.2 PCIe NVMe Solid State Drive<br />\r\n&bull; Nvidia&reg; Geforce&trade; RTX-3070 8GB GDDR6<br />\r\n&bull; Microsoft&reg; Windows&reg; 10 Home (English) 64 Bit<br />\r\n&bull; Microsoft&reg; Office&reg; Home &amp; Student 2019<br />\r\n&bull; Killer&trade; Wi-Fi 6 AX1650 802.11ax 2x2 Wireless LAN and Bluetooth 5.2<br />\r\n&bull; 2x 2W Stero speakers Integrated in Alienware&reg; Sound Center<br />\r\n&bull; Alienware&reg; HD (1280x720 resolution) camera with dual-array microphones<br />\r\n&bull; Alienware&reg; mSeries 4-Zone AlienFX RGB keyboard<br />\r\n&bull; Alienware&reg; responsif multi gesture touchpad<br />\r\n&bull; I/O Port : 2x SuperSpeed USB 3.2 Gen 1 Type A ports | 1x SuperSpeed USB 3.2 Gen 2 Type C port | 1x SuperSpeed USB 3.2 Gen 1 Type A port | 1x HDMI 2.1 Output | 1x Power DC In C port | 1x 2.5Gbps rated RJ-45 Ethernet port | 1x Global Headset jack<br />\r\n&bull; 6 Cell Battery, 86WHr (Integrated)<br />\r\n&bull; 180 Watt E4 AC Adapter<br />\r\n&bull; Dimension : 12 mm ~ 22.85 mm x 356.2 mm x 272.5 mm<br />\r\n&bull; Weight : 2.42k Kg<br />\r\n&bull; Alienware&reg; AW510H 7.1 Gaming Headset<br />\r\n&bull; Alienware&reg; AW610M Gaming Mouse<br />\r\n&bull; Alienware&reg; Backpack<br />\r\n&bull; 3 Year Dell Premium Support Onsite Service with Accidental Damage Protection</p>\r\n', 'produk1642146876.jpg', 1, '2022-01-14 07:54:36'),
(27, 13, 'Dell G5-5000 MT [Ci7-10700F-16-1T-NVD-W10-Dell SE2417HGX]', 28099000, '<p>&bull; Dell&reg; Monitor SE2417HGX, 23.6&quot; FHD (1920 x 1080) Widescreen LED Monitor<br />\r\n&bull; Intel&reg; Core&trade; i7-10700F Processor (16M Cache, up to 4.80 GHz)<br />\r\n&bull; 16GB (1x 16GB) DDR4, 2933 MHz<br />\r\n&bull; 1TB M.2 PCIe NVMe SSD<br />\r\n&bull; Nvidia&reg; Geforce&reg; RTX-2060 Super&trade;, 8GB GDDR6<br />\r\n&bull; Microsoft&reg; Windows&reg; 10 Home (English) 64 Bit<br />\r\n&bull; Killer&trade; Wi-Fi 6 AX1650i (2x2) 802.11ax Wireless and Bluetooth 5.1<br />\r\n&bull; Dell&reg; USB Keyboard KB-216<br />\r\n&bull; Dell&reg; USB Optical Mouse MS-116<br />\r\n&bull; I/O Port : 1x Power button, 1x Microphone jack, 1x Headphone jack, 2x USB 2.0 Type-A, 1x USB 3.1, 1x USB Type-C, 1x Front L/R surround line-out, 1x Audio-in, 1x Center line-out, 4x Superspeed USB 3.1, 1x RJ45 Ethernet, 2x USB 2.0 Type-A, 1x HDMI, 1x Power-in<br />\r\n&bull; 500 Watt Power Supply with Bezel Lighting<br />\r\n&bull; Dimension : 367 mm x 308 mm x 169 mm<br />\r\n&bull; Weight : 7.6 Kg<br />\r\n&bull; 1 Year Dell&reg; NBD OnSite Service Warranty<br />\r\n&bull; Garansi Resmi DELL INDONESIA layanan purna jualnya pun sangat professional.<br />\r\n&bull; 1 tahun Dell Prosupport Onsite Service memberikan jaminan kenyamanan pengguna dalam melakukan klaim garansi.<br />\r\n&bull; Hanya cukup menelpon ke Dell Technical Support 1500 858, teknisi Dell Indonesia yang akan datang ketempat anda.<br />\r\n&bull; Harap Menghubungi kami / Chat sebelum order untuk konfirmasi stock</p>\r\n', 'produk1642147085.jpg', 0, '2022-01-14 07:58:05'),
(29, 12, 'ASUS TUF Gaming F15 FX506HCB-I735B7T-O11 - Graphite Black', 17299000, '<p>ASUS TUF Gaming F15 FX506HCB-I735B7T-O11 - Graphite Black [Intel&reg; Core&trade; i7-11600H / 8GB / 512GB SSD / NVIDIA&reg;&nbsp;GeForce&nbsp;RTX&trade;&nbsp;3050 / 15.6inch / Win11 / OHS]<br />\r\n<br />\r\nFREE INTEL E-MONEY Exclusive Card with value Rp. 300.000<br />\r\n(*selama persediaan masih ada)<br />\r\n<br />\r\nPowerful Gaming Performance<br />\r\nRefresh Rate 144Hz<br />\r\nAdaptive Sync<br />\r\nUS MIL-STD 810G military-grade standard<br />\r\n<br />\r\nProcessor : Intel&reg; Core&trade; i7-11600H Processor 2.9 GHz (18M Cache, up to 4.6 GHz, 6 Cores)<br />\r\nOS : Windows 11 Home + Office&nbsp;Home&nbsp;and&nbsp;Student<br />\r\nPanel : 15.6-inch LED Backlit FHD (1920 x 1080) 16:9 250nits anti-glare panel<br />\r\nGraphic : NVIDIA&reg;&nbsp;GeForce&nbsp;RTX&trade;&nbsp;3050 Laptop GPU, Up to 1600MHz at 60W (75W with Dynamic Boost)<br />\r\nMemory : 8GB DDR4-3200 SO-DIMM<br />\r\nStorage : 512GB M.2 NVMe&trade; PCIe&reg; 3.0 SSD<br />\r\n<br />\r\nPorts :<br />\r\n1x RJ45 LAN port<br />\r\n3x USB 3.2 Gen 1 Type-A<br />\r\n1x USB 3.2 Gen 2 Type-C support DisplayPort&trade;<br />\r\n1x&nbsp;3.5mm&nbsp;Combo&nbsp;Audio&nbsp;Jack<br />\r\n<br />\r\nKeyboard : Backlit Chiclet Keyboard RGB<br />\r\nCamera : 720P&nbsp;HD camera<br />\r\nBattery : 48WHrs, 3S1P, 3-cell Li-ion<br />\r\nPower supply : &oslash;6.0, 180W AC Adapter, Output: 20V DC, 9A, 180W, Input: 100~240V AC, 50/60Hz universal<br />\r\n<br />\r\nConnectivity : Wi-Fi 6(802.11ax)+Bluetooth 5.2 (Dual band) 2*2<br />\r\n(*BT version may change with OS upgrades.)&quot;<br />\r\n<br />\r\nWeight : 2.30 Kg<br />\r\nDimension : 35.9 x 25.6 x 2.28 ~ 2.45 cm<br />\r\nExpansion slot :<br />\r\n2x DDR4 SO-DIMM slots<br />\r\n2x PCIe<br />\r\n<br />\r\nAccessories : TUF Gaming backpack<br />\r\nGaransi Resmi ASUS Indonesia dan tambahan 1 Tahun dari Service Center Datascrip</p>\r\n', 'produk1642147355.jpg', 1, '2022-01-14 08:02:35'),
(30, 12, 'ASUS ROG Strix G17 G713IE-R7R5B7T-O11 - Original Black', 21499000, '<p>ASUS ROG Strix G17 G713IE-R7R5B7T-O11 - Original Black [AMD Ryzen&trade; 7 4800H / NVIDIA&reg;&nbsp;GeForce&nbsp;RTX&trade;&nbsp;3050&nbsp;Ti / 512GB / 8GB / 17.3inch / Win11 / OHS]<br />\r\n<br />\r\nPro level precision : 87% screen to body ratio<br />\r\nPower anywhere : up to 90Wh battery on RTX3060 above and type-C charging<br />\r\nInteligent cooling : Liquid metal, 4 fans outlets, 6 heats pipes, cooling zone, anti dust<br />\r\nSmaller, sleeker, stronger : 7% smaller than last gen<br />\r\nMetal chassis<br />\r\n<br />\r\nCPU : AMD Ryzen&trade; 7 4800H Processor 2.9 GHz (8M Cache, up to 4.2 GHz)<br />\r\nGPU : NVIDIA&reg;&nbsp;GeForce&nbsp;RTX&trade;&nbsp;3050&nbsp;Ti Laptop GPU 4GB GDDR6<br />\r\nWith ROG Boost up to 1795MHz at 80W (95W with Dynamic Boost)<br />\r\nDisplay : 17.3-inch FHD (1920 x 1080) 16:9 144Hz, 250nits, sRGB 62.5%, NTSC 45%<br />\r\nMemory Module : 8GB DDR4-3200 SO-DIMM * 2<br />\r\nM.2 SSD : 512GB M.2 NVMe&trade; PCIe&reg; 3.0 SSD<br />\r\nOperating System : Windows 11 + Office Home and Student 2021<br />\r\n<br />\r\nKeyboard Type : Backlit Chiclet Keyboard 4-Zone RGB<br />\r\nSpeaker : 2x 2W speaker<br />\r\nWifi : Wi-Fi 6(802.11ax)+Bluetooth 5.1 (Dual band) 2*2<br />\r\n(*BT version may change with OS upgrades.) -RangeBoost<br />\r\n<br />\r\nI/O Port :<br />\r\n1x RJ45 LAN port<br />\r\n1x USB 3.2 Gen 2 Type-C support DisplayPort&trade; / power delivery / G-SYNC<br />\r\n3x USB 3.2 Gen 1 Type-A<br />\r\n1x&nbsp;3.5mm&nbsp;Combo&nbsp;Audio&nbsp;Jack<br />\r\n<br />\r\nBattery : 56WHrs, 4S1P, 4-cell Li-ion<br />\r\nDimension : 39.5 x 28.2 x 2.14 ~ 2.46 cm<br />\r\nWeight : 2.40 Kg<br />\r\n<br />\r\nAccessories : ROG backpack for 15_17<br />\r\nGaransi Resmi ASUS Indonesia dan tambahan 1 Tahun dari Service Center Datascrip</p>\r\n', 'produk1642147501.jpg', 1, '2022-01-14 08:05:01'),
(31, 14, 'HP Pav Gaming 15-ec2047AX Laptop/Ryzen 5/8GB/NVIDIARTX1650', 14999000, '<p>GRATIS* Upgrade ke Windows 11<br />\r\n*Syarat dan Ketentuan berlaku<br />\r\nProcessor : AMD Ryzen&trade; 5 5600H<br />\r\nOperating system : Windows&nbsp;10<br />\r\nDisplay : 15.6&quot; FHD Anti Glare 144hz<br />\r\nMemory : 16 GB DDR4 RAM<br />\r\nStorage : 512 GB SSD<br />\r\nGraphics : NVIDIA&reg; GeForce GTX 1650<br />\r\nWarranty : 2 year limited parts and labour + ADP</p>\r\n', 'produk1642148382.jpg', 1, '2022-01-14 08:19:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_telp` varchar(25) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_email`, `user_telp`, `user_name`, `user_password`) VALUES
(1, 'saputra21@gmail.com', '082112327899', 'Saputra', 'Saputra21'),
(2, 'Reyhan14@gmail.com', '082233571422', 'Reyhan', 'Reyhan14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
