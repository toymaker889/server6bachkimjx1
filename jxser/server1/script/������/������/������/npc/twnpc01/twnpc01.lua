--description: 天王帮孙道领　天王入门任务
--author: yuanlan	
--date: 2003/4/24
--Dan_Deng(2003-07-22), 加入门派任务的等级要求
-- Update: Dan_Deng(2003-08-16)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_tw = GetTask(3)
	Uworld38 = GetByte(GetTask(38),1)
	if (Uworld38 == 0) and (GetFaction() ~= "tianwang") and (GetLevel() >= 10) then			-- 记名弟子任务启动
		Say("Mu鑞 tr� th祅h  t� ch輓h th鴆 c馻 b鎛 bang ph秈 c飊g nhau ra s鴆 kh竛g T鑞g ch鑞g Kim, b鋘 ta 琻g nhi猲 l� hoan ngh猲h v� 甶謚 ki謓, ch� c莕 ngi甧m m閠 v� ru v� cho m鋓 ngi c飊g u鑞g, c飊g ch骳 m鮪g, coi nh� ngi 頲 nh藀 m玭", 2, "Ti誴 nh薾 nhi謒 v� /Uworld38_get_yes", "V藋 th玦 甶/no")
	elseif (Uworld38 == 80) and (HaveItem(90) == 1) then					-- 有蓬莱春，任务完成
		Uworld38_prise()
--	elseif (UTask_tw == 5*256+80) then		-- 为天王任务变量被意外改变容错
--		if (GetSeries() == 0) and (GetFaction() == "tianwang") then	-- 如果是天王帮人，则置为刚入帮，否则清零
--			SetTask(3,10*256)
--		else
--			SetTask(3,0)
--		end
	elseif (Uworld38 >= 20) and (Uworld38 < 127) then		-- 入门任务进行中
		Talk(1,"","M鏸 l莕 ngh� n ru 'B錸g lai xu﹏' l� con s﹗ ru trong ngi ta l筰 b総 u c蕌 x� ")
	elseif (GetFaction() == "tianwang") then   				--已经入门，尚未出师
		Talk(1,"","H秓 huynh ! C� r秐h ch髇g ta c飊g u鑞g v礽 ly!")
	elseif (UTask_tw ==70*256) then 					--本门出师，非门派内状态
		Talk(2,"","Kh玭g sao c�, m鋓 ngi c飊g u鑞g n祇 ","Anh ta,,, r鑤 cu閏  say hay l� l莕 trc c遪 ch璦 t豱h ch�? ")
	else
		Talk(1,"","Nghe n鉯 qu竛 rc � <color=Red>Ba L╪g huy謓<color> c� b竛 m閠 lo筰 ru g鋓 l� <color=Red>B錸g Lai Xu﹏<color>,y qu� l� lo筰 ru ti猲 ph萴, ch� ngh� n l� mu鑞 u鑞g ngay!")
	end
end

function Uworld38_get_yes()
	Talk(1,"","Nghe n鉯 qu竛 rc � <color=Red>Ba L╪g huy謓<color> c� b竛 m閠 lo筰 ru g鋓 l� <color=Red>B錸g Lai Xu﹏<color>,y qu� l� lo筰 ru ti猲 ph萴, ch� ngh� n l� mu鑞 u鑞g ngay!")
	Uworld38 = SetByte(GetTask(38),1,20)
	SetTask(38,Uworld38)
	AddNote("T筰 c鯽 v祇 Thu� tr筰 � ph輆 Nam g苝 T玭 Чo L躰h, nh薾<color=red>nhi謒 v� K� danh  t�<color>, n huy謓 Ba L╪g mua ru'Li猲 Lai Xu﹏'. ")
	Msg2Player("T筰 c鯽 v祇 Thu� tr筰 � ph輆 Nam g苝 T玭 Чo L躰h, nh薾 nhi謒 v� K� danh  t�, n huy謓 Ba L╪g mua ru'Li猲 Lai Xu﹏'. ")
end;

function Uworld38_prise()
	Talk(1,"","B錸g Lai Xu﹏! Qu� th藅 l� h秓 t鰑! V鮝 m� n緋 ra  ng鰅 th蕐 m飅 th琺 ng祇 ng箃! Xem ra ngic騨g l� m閠 ngi c� kh� ph竎h, m鋓 ngi c飊g nhau l璾 l筩 giang h� n祇!")
	DelItem(90)
	Uworld38 = SetByte(GetTask(38),1,127)
	SetTask(38,Uworld38)
	i = ReturnRepute(15,19,2)		-- 缺省声望，最大无损耗等级，每级递减
	AddRepute(i)
	AddNote("V� n Thi猲 Vng o, 甧m Li猲 Lai Xu﹏ giao cho T玭 Чo L躰h, ho祅 th祅h nhi謒 v� K� danh  t�. ")
	Msg2Player("V� n Thi猲 Vng o, 甧m Li猲 Lai Xu﹏ giao cho T玭 Чo L躰h, ho祅 th祅h nhi謒 v� K� danh  t�, Danh v鋘g c馻 b筺 t╪g th猰. "..i.."甶觤.")
end;

function no()
end;
