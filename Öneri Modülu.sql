
Create PROCEDURE Ürün_Öneri
    @MüþteriID int = 0
AS
--Module 1 Favori Kategori Bulunmasý
declare @favoriKat varchar(max)


select @FavoriKat=p.Adý --Favori Kategori
From( select top 1  t.Adý,t.Müþteri_ID,count(*) 'Sipariþ Sayisi' 

from(select 
	s.Müþteri_ID,
		s.Sipariþ_Tarihi,
			s.Sipariþ_ID,
			k.Adý,
				ROW_NUMBER() over (partition by s.Müþteri_ID order by Sipariþ_Tarihi desc) 'row' -- Müþteriye ait son sipariþler
from Sipariþ s
	join SipariþDetaay s1 on s1.Sipariþ_ID=s.Sipariþ_ID 
		join Ürün ü on ü.ÜrünID=s1.Ürün_ID 
			join Kategori k on k.KatID=ü.KatID
			 where s.Müþteri_ID=@MüþteriID) as t 
			where t.row<=10					--Son 10 sipariþ
			group by t.Adý,t.Müþteri_ID
			order by 3 desc) as p

--Module 2 Kategoriye ait Fav Ürün Bulunmasý

SELECT t.Ürünadý,@FavoriKat 'Kategori' --Önerilmesi
From (Select top 3 p.Ürünadý
		,sum(p.Miktar) 'Sipariþ Miktarý'
from(select 
		ü.Adý 'Ürünadý',
		 s1.Miktar,
			ROW_NUMBER() over (partition by ü.Adý order by Sipariþ_Tarihi desc) 'row' -- Kategoriye Ait son sipariþler
from Sipariþ s 
	join SipariþDetaay s1 on s1.Sipariþ_ID=s.Sipariþ_ID 
		join Ürün ü on ü.ÜrünID=s1.Ürün_ID 
			join Kategori k on k.KatID=ü.KatID
					where k.Adý = @FavoriKat and ü.[Üretimde mi?]=1) as p -- üretimde mi kontrol edilmesi
					where p.row <=20    --Son 20 sipariþ alýnmasý
		group by p.Ürünadý
		order by 2 desc) as t
RETURN 0 

exec Ürün_Öneri 5