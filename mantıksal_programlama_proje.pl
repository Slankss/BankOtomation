:- dynamic banka/2.
:- dynamic havale/3.
:- dynamic hesap/5.

banka(101,'Ziraat Bankası').
banka(102,'İş Bankası').
banka(103,'Garanti Bankası').
banka(104,'Akbank Bankası').
banka(105,'Yapı Kredi Bankası').

musteri(1, '12345678901', 'Ahmet', 'Yılmaz', erkek).
musteri(2, '23456789012', 'Ayşe', 'Kaya', kadin).
musteri(3, '34567890123', 'Mehmet', 'Demir', erkek).
musteri(4, '45678901234', 'Fatma', 'Çelik', kadin).
musteri(5, '56789012345', 'Ali', 'Şahin', erkek).
musteri(6, '67890123456', 'Zeynep', 'Kurt', kadin).
musteri(7, '78901234567', 'Mustafa', 'Aydın', erkek).
musteri(8, '89012345678', 'Emine', 'Arslan', kadin).
musteri(9, '90123456789', 'Murat', 'Ergün', erkek).
musteri(10, '01234567890', 'Gülsüm', 'Özdemir', kadin).
musteri(11, '11234567891', 'Osman', 'Turan', erkek).
musteri(12, '21234567892', 'Sevgi', 'Yıldız', kadin).
musteri(13, '31234567893', 'Hüseyin', 'Doğan', erkek).
musteri(14, '41234567894', 'Selin', 'Öztürk', kadin).
musteri(15, '51234567895', 'Ayhan', 'Güler', erkek).
musteri(16, '61234567896', 'Zehra', 'Şimşek', kadin).
musteri(17, '71234567897', 'İsmail', 'Kaya', erkek).
musteri(18, '81234567898', 'Sibel', 'Yılmaz', kadin).
musteri(19, '91234567899', 'Ercan', 'Çetin', erkek).
musteri(20, '02234567890', 'Gülten', 'Avcı', kadin).
musteri(21, '13234567891', 'Orhan', 'Özkan', erkek).
musteri(22, '24234567892', 'Gönül', 'Koç', kadin).
musteri(23, '35234567893', 'Adem', 'Yılmaz', erkek).
musteri(24, '46234567894', 'Hande', 'Kaya', kadin).
musteri(25, '57234567895', 'Mert', 'Toprak', erkek).
musteri(26, '68234567896', 'Seda', 'Kurt', kadin).
musteri(27, '79234567897', 'Ahmet', 'Arslan', erkek).
musteri(28, '80234567898', 'Aysun', 'Sönmez', kadin).
musteri(29, '91234567899', 'Emre', 'Kara', erkek).
musteri(30, '02234567890', 'Fadime', 'Tunç', kadin).

hesap(1, 101, 'TR010010000000100000001', 1, 5000).
hesap(2, 104, 'TR010040000000200000002', 2, 7000).
hesap(3, 102, 'TR010020000000300000003', 3, 3000).
hesap(4, 105, 'TR010050000000400000004', 4, 10000).
hesap(5, 103, 'TR010030000000500000005', 5, 2000).
hesap(6, 101, 'TR010010000000600000006', 6, 8000).
hesap(7, 104, 'TR010040000000700000007', 7, 4500).
hesap(8, 102, 'TR010020000000800000008', 8, 6000).
hesap(9, 105, 'TR010050000000900000009', 9, 0).
hesap(10, 103, 'TR010030000001000000010', 10, 8500).
hesap(11, 101, 'TR010010000001100000011', 11, 9200).
hesap(12, 104, 'TR010040000001200000012', 12, 5300).
hesap(13, 102, 'TR010020000001300000013', 13, 7200).
hesap(14, 105, 'TR010050000001400000014', 14, 2800).
hesap(15, 103, 'TR010030000001500000015', 15, 3600).
hesap(16, 101, 'TR010010000001600000016', 16, 4100).
hesap(17, 104, 'TR010040000001700000017', 17, 9700).
hesap(18, 102, 'TR010020000001800000018', 18, 2400).
hesap(19, 105, 'TR010050000001900000019', 19, 8100).
hesap(20, 103, 'TR010030000002000000020', 20, 1300).
hesap(21, 101, 'TR010010000002100000021', 21, 6800).
hesap(22, 104, 'TR010040000002200000022', 22, 5700).
hesap(23, 102, 'TR010020000002300000023', 23, 4200).
hesap(24, 105, 'TR010050000002400000024', 24, 9300).
hesap(25, 103, 'TR010030000002500000025', 25, 1600).
hesap(26, 101, 'TR010010000002600000026', 26, 7400).
hesap(27, 104, 'TR010040000002700000027', 27, 3800).
hesap(28, 102, 'TR010020000002800000028', 28, 2900).
hesap(29, 105, 'TR010050000002900000029', 29, 500).
hesap(30, 103, 'TR010030000003000000030', 30, 4500).




havale(Gonderen,Gonderilen,Miktar) :-   hesap(Gonderen,GonderenBankaNo,_,_,Bakiye),
                                        hesap(Gonderilen,GonderilenBankaNo,_,_,_),

                                        write(GonderenBankaNo),

                                        Miktar =< Bakiye,
                                        GonderenBankaNo =:= GonderilenBankaNo,
                                        
                                
                                        write(Gonderilen), write(" No'lu hesaba "),
                                        write(Miktar), write(" TL "),
                                        write("gönderildi").  


                                                        
                                                   

	           		