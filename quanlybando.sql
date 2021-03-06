
USE [QUANLYBANHANG]
GO
/****** Object:  Table [dbo].[Admin1]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin1](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [varchar](12) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[Quyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](max) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [bit] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 7/27/2021 1:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin1] ON 

INSERT [dbo].[Admin1] ([MaAdmin], [HoTen], [DiaChi], [DienThoai], [TenDN], [MatKhau], [NgaySinh], [Email], [Quyen]) VALUES (1, NULL, NULL, NULL, N'abc', N'123', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Admin1] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (33, 22, 48, N'Backpack Blue Sky Galaxy', 1, CAST(329000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (34, 23, 48, N'Backpack Blue Sky Galaxy', 1, CAST(329000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (22, CAST(N'2021-07-26T16:01:45.333' AS DateTime), 1, NULL, 1, 25, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (23, CAST(N'2021-07-26T17:31:26.380' AS DateTime), 0, NULL, 1, 26, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (24, N'Phạm Văn Sỹ', N'Bình Dương', N'phamsy113.spm@gmail.com', N'0374812594', 3)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (25, N'Phạm Văn Sỹ', N'Bình Dương', N'phamsy113.spm@gmail.com', N'0374812594', 3)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (26, N'Phạm La Văn A', N'Bình Dương', N'lavana@gmail.com', N'0374812594', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'T-SHIRT', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'JACKET', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'ACCESSORIES', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Member', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Vip', 20)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Thường', 10)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'DangKy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLyDonHang', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLySanPham', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanTri', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QuanLySanPham', NULL)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'VẢI VIỆT', NULL, NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'VẢI MỸ', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'DIRTY-COIN', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'NOWSAIGON', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'DEGREY', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (4, N'LEVENTS', NULL, NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'THE ZED', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangKy', N'Đăng ký')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLyDonHang', N'Quản lý đơn hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLySanPham', N'Quản lý sản phẩm')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanTri', N'Quản trị')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (3, N'HOLOGRAM NOWSAIGON TEEE', CAST(500000 AS Decimal(18, 0)), CAST(N'2021-07-07T00:00:00.000' AS DateTime), NULL, N'• 100% nỉ bông.
• 2 túi thân áo.
• Hoạ tiết logo DIRTYCOINS áp dụng công nghệ in chuyển nhiệt.
• Thêu tay thủ công logo Y viền bông.
• Bo gân viền áo, tà áo và cổ tay áo.
• Hàng khuy dễ đóng mở.', N'T6.jpg', 13, NULL, NULL, NULL, NULL, 1, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (4, N'HOLOGRAM NOWSAIGON TEE', CAST(380000 AS Decimal(18, 0)), CAST(N'2021-07-07T00:00:00.000' AS DateTime), NULL, N'• Dáng áo fit oversize. 
• Hình ảnh và họa tiết được in lụa kết hợp in decal. 
• Vạt áo trước thêu tag thông tin kèm logo DirtyCoins.

Mẫu nữ trong ảnh mặc chuẩn size S (1m50-1m56)', N'T7.jpg', 20, NULL, NULL, NULL, NULL, 1, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (7, N'CUPIDO TEE', CAST(190000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• Dáng áo fit oversize.
• Hình ảnh và họa tiết được in lụa kết hợp in decal.

• Vạt áo trước thêu tag thông tin kèm logo DirtyCoins.

Mẫu nữ trong ảnh mặc chuẩn size S (1m50-1m56)', N'T9.jpg', 13, NULL, NULL, NULL, NULL, 1, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (11, N'Hút Đì Loang Xám - HTL DEGREY BLACK JACKET STYLE', CAST(500000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• 100% nỉ bông.
• 2 túi thân áo.

• Hoạ tiết logo DIRTYCOINS áp dụng công nghệ in chuyển nhiệt.

• Thêu tay thủ công logo Y viền bông.

• Bo gân viền áo, tà áo và cổ tay áo.

• Hàng khuy dễ đóng mở.', N'H1.jpg', 13, NULL, NULL, NULL, NULL, 1, NULL, 3, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (12, N'Hoodie Xoài Zilla Xanh Rêu - HXZ Xanh Rêu', CAST(510000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• 100% nỉ bông.
• 2 túi thân áo.

• Hoạ tiết logo DIRTYCOINS áp dụng công nghệ in chuyển nhiệt.

• Thêu tay thủ công logo Y viền bông.

• Bo gân viền áo, tà áo và cổ tay áo.

• Hàng khuy dễ đóng mở.', N'H2.jpg', 13, NULL, NULL, NULL, NULL, 1, NULL, 3, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (13, N'NOWSAIGON WINDBREAKER JACKET TRẮNG', CAST(500000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• 100% nỉ bông.
• 2 túi thân áo.

• Hoạ tiết logo DIRTYCOINS áp dụng công nghệ in chuyển nhiệt.

• Thêu tay thủ công logo Y viền bông.

• Bo gân viền áo, tà áo và cổ tay áo.

• Hàng khuy dễ đóng mở.', N'xojacket4-copy.jpg', 20, NULL, NULL, NULL, NULL, 1, NULL, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (22, N'Áo Thun Đồ Ăn Mint - ATDA Mint', CAST(145000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• Dáng áo fit oversize. 
• Hình ảnh và họa tiết được in lụa kết hợp in decal. 
• Vạt áo trước thêu tag thông tin kèm logo DirtyCoins.

Mẫu nữ trong ảnh mặc chuẩn size S (1m50-1m56)', N'884bee27-52cc-4ecb-af61-caa888061099_529fbec10f994443b6e060412ec63962_grande.jpeg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (23, N'Áo Thun Băng Degrey - ABD', CAST(290000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'• Dáng áo fit oversize. 
• Hình ảnh và họa tiết được in lụa kết hợp in decal. 
• Vạt áo trước thêu tag thông tin kèm logo DirtyCoins.

Mẫu nữ trong ảnh mặc chuẩn size S (1m50-1m56)', N'b60b03cb-fc7d-4653-bfb6-a78d9c50971b_b8efefa3a10e407a9d2cf4ccbf73a003_grande.jpeg', 100, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (24, N'Áo Thun Xoài Bông - ATXB', CAST(290000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'ff9e27c4-371f-462d-b859-1e940372b4f7_ac333be017a64d36b5cc70aa6debb349_grande.jpeg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (25, N'Áo Túi Thêu Degrey Basic Hồng - ATTD Hồng', CAST(290000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'1-te9101-2_ce8bd8b50c2b4f8ba2640cef578f2308_grande.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (26, N'Áo Túi Thêu Degrey Basic Xanh Biển - ATTD Xanh Biển', CAST(290000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'z2546258161356_03062319e33f62d82cc5af656e4359f6_ad80e82fc31341509143decc4668da89_master.jpg', 50, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (27, N'Áo Xí Quách Tròn - XQT', CAST(350000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'4cb79030-9e2c-4504-96e6-f54a7fc9afea_5d80668a64de4f7a825cfbb7de3e3f9d_grande.jpeg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (28, N'Áo Thun Vằn Vèo Trắng - ATVV Trắng', CAST(320000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'98c11f37-b30f-4efc-b0dc-77579f4f50a9_5d73717563d74cb28eb9bdaed9374760_grande.jpeg', 60, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (29, N'Áo Thun Xoài Ác Quỷ - AXAQ', CAST(350000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Size S áp dụng cho các bạn dưới 60kg
Size M áp dụng cho các bạn từ 60-75kg

Size L áp dụng cho các bạn trên 75kg', N'd27accb2-e7df-44d0-92ba-0d69894727ea_cc3c9f1ea0c14ef6a98e8cc41bf4be1b_grande.jpeg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (30, N'LEVENTS® ESSENTIAL FINGER PRINT TEE/ BLUE', CAST(333000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'Form áo được Fit size theo form và tiêu chuẩn tương đối của người Việt Nam, nếu bạn đang cân nhắc giữa hai size, nên chọn size lớn hơn.
size 0 : Dưới 1m65, Cân Nặng Dưới 55 kg
Size 1 : Chiều Cao Từ 1m65 , Cân Nặng trên 55 kg
Size 2 : Chiều Cao từ 1m65-  1 m 72, Cân Nặng Dưới 65 kg
Size 3 : Chiều Cao từ 1m70-  1m77 , Câng Nặng Dưới 80 kg
Size 4 : Chiều Cao Trên 1m72, Cân Nặng dưới 95kg', N'z2596906794833_fc05ca7ff49f0b037b6b7e1437a0c53a_e0c2a255836f49efaca263b078debe38_master.jpg', 13, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (31, N'LEVENTS® SPACESHIP GALAXY TEE / BLACK', CAST(296000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'LEVENTS® SHARK TEE

COLOR: BLACK 

MATERIAL: 100% COTTON
SIZE: 0/1/2/3/4', N'z2546258161356_03062319e33f62d82cc5af656e4359f6_ad80e82fc31341509143decc4668da89_master.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (32, N'LEVENTS® MINI POPULAR LOGO/ WHITE', CAST(280000 AS Decimal(18, 0)), CAST(N'2021-07-08T00:00:00.000' AS DateTime), NULL, N'LEVENTS® MINI POPULAR LOGO

COLOR: WHITE

MATERIAL: 100% COTTON
SIZE: 0/1/2/3/4', N'z2555842527829_44f7c31e7578485b54ee147671181b15_f43a93c07bd94a23b1749171af239b93_master.jpg', 200, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (33, N'Monarch Butterfly T-Shirt - White', CAST(320000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• 100% cotton

• Regular fit

• Hình in lụa trước ngực & lưng áo

• Tay áo thêu logo nổi cùng màu', N'monarch-butterflys-white-7-w-5cf392f5-708c-4c29-8d32-cbc5fcdba4be.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (34, N'DirtyCoins x 16Typh The Rapper T-Shirt', CAST(420000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Áo thun chất liệu 100% Cotton
Size: M, L, XL (dáng áo fit oversize)
Kỹ thuật in kéo lụa
Vạt áo trước thêu tag giới hạn dành riêng cho collab, cổ áo thêu tag thông tin size và chất liệu sản phẩm, sườn áo thêu tag phụ.', N'T3.jpg', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (35, N'BOB T-shirt - Tan', CAST(400000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• Sản phẩm 100% cotton. 
• Form áo cơ bản.
• Hình in được in lên trước ngực và lưng áo.', N'T2.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (36, N'Dico Polo Shirt', CAST(400000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• Sản phẩm 100% cotton. 
• Form áo oversize
• Hình in được in lên trước ngực và lưng áo.', N'dico-polo-3-w.jpg', 800, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (37, N'DirtyCoins Graffitee - White', CAST(390000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• Sản phẩm 100% cotton. 
• Form áo cơ bản.
• Hình in được in lên trước ngực và lưng áo.', N'dirtycoins-grafitee-whi-3-w.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (38, N'DirtyCoins Fukyba T-shirt', CAST(390000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• Sản phẩm 100% cotton. 
• Form áo cơ bản.
• Hình in được in lên trước ngực và lưng áo.
• Logo FUKYBA được thêu ở tay áo phải.', N'T4.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (39, N'DirtyCoins Big Stripes T-shirt - Green', CAST(350000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'• Sản phẩm 100% cotton. 
• Form áo cơ bản.
• Hình in được in lên trước ngực và lưng áo.
• Logo được thêu ở tay áo.', N'big-stripes-t-shirts-gre-1-w-f8592e7e-3ab2-47bd-bd62-3b520d28b615.jpg', 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (40, N'Free your soul', CAST(350000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'fd0e038de78413da4a95_9ac06bc4187149f19f7eecd2bff958df_master.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (41, N'Icon T-shirt', CAST(320000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'-Thông số bảng size :
Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

 

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 80kg - 1m8 ', N'z2546553178504_8e9f823b65e773b319960507be7ed50d_566013829a9745618a5714c6a89c2752_master.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (42, N'Be you T-shirt', CAST(256000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'-Thông số bảng size :
Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

 

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'z2546553178504_8e9f823b65e773b319960507be7ed50d_566013829a9745618a5714c6a89c2752_master.jpg', 80, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (43, N'Teddy Zombie', CAST(210000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'-Thông số bảng size :
Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

 

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'1111_a3649d4bb7214d0eaae0ad3671238367_master.jpg', 13, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (44, N'Basic - SS3', CAST(196000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 

', N'0fae9ba11fe5eebbb7f4_68adba4efe794616a84c2b52292b55d7_master.jpg', 30, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (45, N'Enjoy Life', CAST(224000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'194af5429b036a5d3312_faa37a81d2504055ace2dc9d73652620_master.jpg', 100, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (46, N'Don’t tell me T-Shirtt', CAST(224000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'z2517060387614_f680de49e6b93148d72a7b2eddfe281d_00da8ea89ed945b2995f9084fd34926e_master.jpg', 200, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (47, N'BEAR SMILE???', CAST(224000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Size S dài 69 rộng 50cm
Size M dài 70 rộng 54cm
Size L dài 71 rộng 57cm

S dưới 52kg - 1m6
M dưới 70kg - 1m7
L dưới 85kg - 1m8 ', N'z2240400305391_190cbfd3a6b9643bb19673fed4a67417_8f043868210d4be79c3b576d31f3c074_master.jpg', 100, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (48, N'Backpack Blue Sky Galaxy', CAST(329000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'1. Điều kiện đổi trả

Quý Khách hàng cần kiểm tra tình trạng hàng hóa và có thể đổi hàng/ trả lại hàng ngay tại thời điểm giao/nhận hàng trong những trường hợp sau:

Hàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc như trên website tại thời điểm đặt hàng.
Không đủ số lượng, không đủ bộ như trong đơn hàng.
Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…
 Khách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa. ', N'b7c13f3466e49dbac4f5-9959_280x300_ccbb71027f5d4df7b8c3d2caf91cde42_master.jpg', 100, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (49, N'NEON LOGO JACKET NOWSAIGON WHITE', CAST(495000 AS Decimal(18, 0)), CAST(N'2021-07-09T00:00:00.000' AS DateTime), NULL, N'Hệ Thống Cửa Hàng

- CN 1: 445 Sư Vạn Hạnh, P.12, Q.10 

- CN 2: 48 Trần Quang Diệu, P.14, Q.3

- CN 3: 463 Quang Trung, P.10, Q. Gò Vấp

- CN 4: 350 Điện Biên Phủ, P.17, Q. BT

- CN 5: TNP - 26 Lý Tự Trọng, P. Bến Nghé, Q.1.

- CN 6: TNP (Sense Market) - Đối Diện Số 90 Lê Lai, P. Bến Nghé, Q.1.

- CN 7: Tầng 7, Vincom Bà Triệu, Hanoi', N'neon-logo-coaches-jacket-trang-truoc.jpg', 50, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (50, N'LEVENTS® EMGO VARSITY / RED', CAST(850000 AS Decimal(18, 0)), CAST(N'2021-07-18T00:00:00.000' AS DateTime), NULL, N'Form áo được Fit size theo form và tiêu chuẩn tương đối của người Việt Nam, nếu bạn đang cân nhắc giữa hai size, nên chọn size lớn hơn.
Size 1 : Chiều Cao Từ 1m65 , Cân Nặng trên 55 kg
Size 2 : Chiều Cao từ 1m65-  1 m 72, Cân Nặng Dưới 65 kg
Size 3 : Chiều Cao từ 1m70-  1m77 , Câng Nặng Dưới 80 kg', N'dc528202a73c55620c2d1_8f251297f6144dda9967556090d81162_master.jpg', 20, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (51, N'Signature Y Zip Coach Jacket', CAST(650000 AS Decimal(18, 0)), CAST(N'2021-07-18T00:00:00.000' AS DateTime), NULL, N'• Chất liệu dù.
• Có zipper từ tà áo đến cổ áo, kèm lớp che có nút bấm.
• Ống tay áo có nút bấm tùy chỉnh ôm.
• Áo có hood được trang bị dây rút.', N'signature-y-zip-coach-jackts-bla-1-w.png', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (52, N'Jacket Basic', CAST(390000 AS Decimal(18, 0)), CAST(N'2021-07-18T00:00:00.000' AS DateTime), NULL, N'S dưới 58 kg - 1m6
M dưới 75 kg - 1m7
L dưới 85 kg - 1m8 ', N'z2236278220856_61cd6b1d6525e76c58738c709a1a0c2c_4e8558d6c11b40a58a9540b6a468dbe6_master.jpg', 10, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (1, N'Admin', N'123456', N'Phạm Văn Sỹ Pro', N'Bình Dương', N'phamsy1122001@gmail.com', N'0374812594', NULL, NULL, 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (2, N'Member', N'phamvansy123', N'Phạm Văn Sỹ', N'Bình Dương', N'aphamvan@gmail.com', N'0374812594', N'Con vật mà bạn yêu thích?', N'chó', 4)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (3, N'sydeptrai112', N'phamvansy123', N'Phạm Văn Sỹ', N'Bình Dương', N'phamsy113.spm@gmail.com', N'0374812594', N'Con vật mà bạn yêu thích?', N'chó', 3)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
USE [master]
GO
ALTER DATABASE [QUANLYBANHANG] SET  READ_WRITE 
GO
