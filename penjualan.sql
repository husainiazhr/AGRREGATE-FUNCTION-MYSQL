/* - - - - - - - - - - - - - - - - - - -
 - - - - - - - - - - - - - - - - - - - - 
Copyright 2023, AGRREGATE FUNCTION MYSQL

Author : Mohammad Husaini Azhar
Major : Informatics Engineering
University : Universitas Islam Balitar

This code is free to use
 - - - - - - - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - - - - - - */

                    /** Database and Table Sale (Penjualan) **/

-- Fungsi agregat MAX (untuk mencari harga tertinggi)
SELECT MAX(Harga) AS `Harga`,`ID_Penjualan`,`Nama Produk` FROM penjualan;

-- Fungsi agregat SUM (untuk menghitung total harga)
SELECT `Nama Produk`,`Harga` FROM penjualan;
SELECT SUM(Harga) AS Total_Harga FROM penjualan;

-- Fungsi agregat COUNT (untuk menghitung jumlah penjualan produk)
SELECT `Nama Produk`, COUNT(*) AS Jumlah_Penjualan FROM penjualan GROUP BY `Nama Produk`;

-- Fungsi agregat HAVING (untuk memfilter hasil berdasarkan kondisi)
SELECT `Nama Produk`, COUNT(*) AS Jumlah_Penjualan FROM penjualan GROUP BY `Nama Produk` HAVING COUNT(*) > 1;

-- Contoh penggunaan operator matematika
-- Menambahkan Harga dengan 10
SELECT ID, Nama_Produk, Harga + 10 AS Harga_Baru FROM Penjualan;

-- Mengalikan Harga dengan faktor 1.5
SELECT ID, Nama_Produk, Harga * 1.5 AS Harga_Baru FROM Penjualan;

-- Menghitung diskon 10% dari Harga
SELECT ID, Nama_Produk, Harga - (Harga * 0.1) AS Harga_Diskon FROM Penjualan;