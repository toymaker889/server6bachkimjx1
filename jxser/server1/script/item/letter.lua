--包袱内的信件（新任务系统龙五的包袱）正派
--by xiaoyang(2004\12\25)

Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
local curCamp = nt_getCamp()
	Uworld1001 = nt_getTask(1001)  --正派
	Uworld1002 = nt_getTask(1002)
	Uworld1003 = nt_getTask(1003)
	Uworld183 = nt_getTask(183)
	Uworld186 = nt_getTask(186)
	Uworld189 = nt_getTask(189)
	local name = GetName()
	if ( Uworld183 == 20 )  then
		Describe("<link=image:\\spr\\item\\questkey\\taskobj075.spr>Th� Long Ng�<link><enter>Long Ng�: "..name..", hi謓 c� m閠 t� ch鴆 t猲 l� T莔 Long h閕 th鵦 l鵦 to l韓 產ng t� h鋚 trong c竎 th祅h th�. Ngi h穣 t譵 c竎h gia nh藀 t� ch鴆 n祔, r蕋 t鑤 cho tng lai c馻 ngi! H穣 甶 Чi L� t譵 M筩 S莡, c� ta s� giao c� th� cho ngi. Nh璶g kh玭g 頲 nh綾 t韎 ta! Nguy猲 nh﹏ sau n祔 ngi s� bi誸! Long Ng�.",1,"Nh薾 h祄 th� /no")
		nt_setTask(183,30)
		if ( Uworld1001 < 10 ) then
	  		nt_setTask(1001,10) --正派任务开始
	  	end
	end
	return 0
end
	
