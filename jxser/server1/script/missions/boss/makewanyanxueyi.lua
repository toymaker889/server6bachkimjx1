--完颜雪衣(564)，生于每天21：05，在227,1504,3144
function main()
	mapindex = SubWorldID2Idx(227)
	if (mapindex < 0 ) then
		return
	end;
	bossid = 564
	bosslvl = 95
	posx = 1504*32
	posy = 3144*32
	AddNpcEx(bossid,bosslvl,3,mapindex,posx,posy,1, "Ho祅 Nhan Tuy誸 Y", 1)
	AddGlobalNews("Nghe n鉯 Th蕋 c玭g ch骯 c馻 Kim qu鑓 Ho祅 Nhan Tuy誸 Y  truy 畊鎖 theo an M閏 Du� n M� Cung � sa m筩 Йn Ho祅g c馻 nc T﹜ H� (188, 196) . ")
end; 