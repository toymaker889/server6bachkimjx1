--西北北区 留仙洞五层3to留仙洞六层
--TrapID：西北北区 41
-- by：Dan_Deng(2003-07-31)

function main(sel)
	Talk(1,"L60_q5","B筺 nh譶 th蕐 m閠 c� quan, tr猲 c� kh綾 m蕐 d遪g ch�: ")
--	AddTermini(47)		--这是什么东西？
end;

function L60_q5()
	Say("Ho祅g д � trong trung t﹎ Thi猲 nh, ph� t� 玭g c� th� th莕 h藆 th�. Ho祅g  ki課 t筼 ra chi誧 xe, v� v藋 g鋓 l� 'Hi猲 Vi猲 Th�'. Ngi c� bi誸 'Hi猲' l� ch� b� ph薾 n祇 trong chi誧 xe kh玭g? ",4,"B竛h xe /L60_S5_wrong","Tr鬰 xe /L60_S5_wrong","Hai b鴆 tng s骳 v藅 b籲g g� /L60_S5_correct","Kh骳 g� sau xe /L60_S5_wrong")
end

function L60_S5_correct()
	UTask_kl = GetTask(9)
	if (GetFaction() == "kunlun") and ((UTask_kl >= 70*256) or ((UTask_kl == 60*256+20) and (HaveItem(15) == 1))) then
--	if ((UTask_kl == 60*256+20) and (HaveItem(15) == 1)) then
		Msg2Player("B筺 h穣 蕁 v祇 p 竛 th� ba, c� quan s� kh雐 ng a ngi n m閠 m藅 th蕋 ")
		SetFightState(1);
		NewWorld(130, 1547, 3143);
	else
		Msg2Player("B筺 蕁 lo筺 x� v祇 nh鱪g k� t�, nh璶g kh玭g th蕐 ph秐 鴑g g� ")
	end
end;

function L60_S5_wrong()
	Msg2Player("B筺 蕁 lo筺 x� v祇 nh鱪g k� t�, nh璶g kh玭g th蕐 ph秐 鴑g g� ")
end;
