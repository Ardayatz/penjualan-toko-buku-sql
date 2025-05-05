INSERT INTO Books (book_id, title, author, price, stock) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 80000, 15),
(2, 'Bumi', 'Tere Liye', 95000, 20),
(3, 'Negeri 5 Menara', 'Ahmad Fuadi', 85000, 10),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 120000, 8),
(5, 'Atomic Habits', 'James Clear', 130000, 12);

insert into customers (customer_id, name, email, phone) values
(1, 'Andi Wijaya', 'andi@example.com', '081234567890'),
(2, 'Siti Rahma', 'siti@example.com', '082123456789'),
(3, 'Budi Santoso', 'budi@example.com', '083987654321');

insert into sales (sale_id, customer_id, sale_date) values
(1, 1, '2025-04-01'),
(2, 2, '2025-05-10'),
(3, 3, '2025-04-15');

insert into SaleDetails (sale_id, book_id, quantity) values 
(1, 1, 2),
(1, 2, 1),  
(2, 3, 1),  
(2, 5, 1), 
(3, 2, 2),  
(3, 4, 1);
