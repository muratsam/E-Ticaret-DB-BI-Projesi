
Create PROCEDURE �r�n_�neri
    @M��teriID int = 0
AS
--Module 1 Favori Kategori Bulunmas�
declare @favoriKat varchar(max)


select @FavoriKat=p.Ad� --Favori Kategori
From( select top 1  t.Ad�,t.M��teri_ID,count(*) 'Sipari� Sayisi' 

from(select 
	s.M��teri_ID,
		s.Sipari�_Tarihi,
			s.Sipari�_ID,
			k.Ad�,
				ROW_NUMBER() over (partition by s.M��teri_ID order by Sipari�_Tarihi desc) 'row' -- M��teriye ait son sipari�ler
from Sipari� s
	join Sipari�Detaay s1 on s1.Sipari�_ID=s.Sipari�_ID 
		join �r�n � on �.�r�nID=s1.�r�n_ID 
			join Kategori k on k.KatID=�.KatID
			 where s.M��teri_ID=@M��teriID) as t 
			where t.row<=10					--Son 10 sipari�
			group by t.Ad�,t.M��teri_ID
			order by 3 desc) as p

--Module 2 Kategoriye ait Fav �r�n Bulunmas�

SELECT t.�r�nad�,@FavoriKat 'Kategori' --�nerilmesi
From (Select top 3 p.�r�nad�
		,sum(p.Miktar) 'Sipari� Miktar�'
from(select 
		�.Ad� '�r�nad�',
		 s1.Miktar,
			ROW_NUMBER() over (partition by �.Ad� order by Sipari�_Tarihi desc) 'row' -- Kategoriye Ait son sipari�ler
from Sipari� s 
	join Sipari�Detaay s1 on s1.Sipari�_ID=s.Sipari�_ID 
		join �r�n � on �.�r�nID=s1.�r�n_ID 
			join Kategori k on k.KatID=�.KatID
					where k.Ad� = @FavoriKat and �.[�retimde mi?]=1) as p -- �retimde mi kontrol edilmesi
					where p.row <=20    --Son 20 sipari� al�nmas�
		group by p.�r�nad�
		order by 2 desc) as t
RETURN 0 

exec �r�n_�neri 5