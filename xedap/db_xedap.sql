create table theloai(
    matl int NOT NULL AUTO_INCREMENT,
    tentl varchar (100),
    PRIMARY KEY (matl) 
    
);
create table hanghoa(
    mahang int NOT NULL AUTO_INCREMENT,
    tenhang varchar(100),
    dongia float,
    mota text,
    matl int,
    hinhanh VARCHAR(100),
    PRIMARY KEY(mahang),
    FOREIGN KEY (matl) REFERENCES theloai(matl)
);
create table sltonkho(
    mahang int NOT NULL AUTO_INCREMENT,
    soluong int,
    PRIMARY KEY(mahang)
);
create table khachhang(
    makh int NOT NULL AUTO_INCREMENT,
    tenkh varchar(100),
    std varchar(11),
    diemtl float,
    matkhau varchar(100),
    diachi text,
    PRIMARY KEY(makh)

);
create table giohang(
    makh int ,
    mahang int ,
    soluong int,
    FOREIGN KEY (makh) REFERENCES khachhang(makh),
    FOREIGN KEY (mahang) REFERENCES sltonkho(mahang)

);
create table dondathang(
    madonhang int NOT NULL AUTO_INCREMENT,
    ngaylapdon date,
    makh int,
    PRIMARY KEY (madonhang),
    FOREIGN KEY (makh) REFERENCES khachhang(makh)
);
create table CTDDH(
    madonhang int NOT NULL AUTO_INCREMENT,
    mahang int,
    tentl varchar(100),
    dongia float,
    soluong int,
    FOREIGN KEY (mahang) REFERENCES sltonkho (mahang),
    FOREIGN KEY (madonhang) REFERENCES dondathang(madonhang)     
);



