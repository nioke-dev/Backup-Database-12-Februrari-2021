TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `tr_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN\nUPDATE buku SET jumlah = jumlah - NEW.jumlah_peminjaman \nWHERE buku.isbn = NEW.isbn_id;\nEND'
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=161265924559
