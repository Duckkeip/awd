CREATE TABLE DanhMuc (
    danh_muc_id INT PRIMARY KEY AUTO_INCREMENT,
    ten_danh_muc VARCHAR(100) NOT NULL
);

CREATE TABLE KhachHang (
    khachhang_id INT PRIMARY KEY AUTO_INCREMENT,
    ho VARCHAR(50) NOT NULL,
    ten VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    so_dien_thoai VARCHAR(15),
    dia_chi VARCHAR(255),
    thanh_pho VARCHAR(50),
    quoc_gia VARCHAR(50),
    ngay_tao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE SanPham (
    sanpham_id INT PRIMARY KEY AUTO_INCREMENT,
    ten_sanpham VARCHAR(100) NOT NULL,
    mo_ta TEXT,
    gia DECIMAL(10, 2) NOT NULL,
    so_luong_ton INT NOT NULL,
    danh_muc_id INT,
    ngay_tao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (danh_muc_id) REFERENCES DanhMuc(danh_muc_id)
);

CREATE TABLE DonHang (
    donhang_id INT PRIMARY KEY AUTO_INCREMENT,
    khachhang_id INT,
    ngay_lap_don DATETIME DEFAULT CURRENT_TIMESTAMP,
    tong_tien DECIMAL(10, 2) NOT NULL,
    trang_thai VARCHAR(50) DEFAULT 'cho_xu_ly',
    FOREIGN KEY (khachhang_id) REFERENCES KhachHang(khachhang_id)
);

CREATE TABLE ChiTietDonHang (
    chitietdonhang_id INT PRIMARY KEY AUTO_INCREMENT,
    donhang_id INT,
    sanpham_id INT,
    so_luong INT NOT NULL,
    gia_don_vi DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (donhang_id) REFERENCES DonHang(donhang_id),
    FOREIGN KEY (sanpham_id) REFERENCES SanPham(sanpham_id)
);

CREATE TABLE ThanhToan (
    thanhtoan_id INT PRIMARY KEY AUTO_INCREMENT,
    donhang_id INT,
    ngay_thanh_toan DATETIME DEFAULT CURRENT_TIMESTAMP,
    phuong_thuc VARCHAR(50),
    so_tien DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (donhang_id) REFERENCES DonHang(donhang_id)
);
