--Menampilkan semua buku beserta stoknya
select 
title,
stock
from books;

--Menampilkan total buku terjual per judul
select 
b.title,
sum(sd.quantity) as buku_terjual
from books b
join saledetails sd on b.book_id=sd.sale_id
group by b.title;

--Menampilkan daftar pelanggan dan jumlah transaksi mereka
select 
cus.name,
sd.sale_id,
sum(sd.quantity*b.price) as jumlah_transaksi
from customers cus
join SaleDetails sd on cus.customer_id = sd.sale_id
join books b on cus.customer_id = b.book_id 
group by cus.name, sd.sale_id;

--Menampilkan total pendapatan dari seluruh penjualan
select 
sum(sd.quantity*b.price) as total_pendapatan
from customers cus
join SaleDetails sd on cus.customer_id = sd.sale_id
join books b on cus.customer_id = b.book_id;

--Menampilkan transaksi penjualan di bulan April 2025
select
s.sale_date,
b.title,
sum(sd.quantity) transakasi
from sales s
join saledetails sd on s.sale_id = sd.sale_id
join books b on s.sale_id = b.book_id
group by s.sale_date, b.title;
