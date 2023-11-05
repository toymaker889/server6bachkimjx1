-- 任务物品 大曼陀罗花 翠烟20级任务
-- by：Dan_Deng(2003-07-26)

Include("\\Script\\Global\\TimerHead.lua")

function main()
	UTask_cy = GetTask(6)
	if (GetSeries() == 2) and (GetFaction() == "cuiyan") and (UTask_cy >= 20*256+10) and (UTask_cy < 30*256) then		--翠烟20级任务中才能捡此道具
		i = GetTimerId()
		if (i ~= 0) and (i ~= 8) then		-- 另有计时器在运行中
			Talk(1,"","Ngi 產ng mang nhi謒 v� c蕄 b竎h nh� th�, m� c遪 ch箉 lung tung �?")
			return
		end
		SetPropState()
		AddEventItem(1)
		Msg2Player("H竔 m閠 b玭g hoa Чi Man У La. ")
		if (i == 0) then									-- 尚未中毒则让他中毒
			SetTimer(3 * CTime * FramePerSec, 8)									--计时器定为半小时（3个时辰）
			SetTask(6,20*256+20)				-- 变量置为中毒第一阶段
--			PutMessage("你感到手中一阵麻庠，已经中毒了。")
			Msg2Player("B筺 c秏 th蕐 tay b� t� li謙,  tr髇g c r錓. ")
		end
	else
		Msg2Player("B筺 a tay h竔 m閠 a hoa Чi Man У La ")
		Msg2Player("V鮝 s� v祇 hoa, b筺 c秏 th蕐 tay m譶h b� t� li謙, h譶h nh� hoa n祔 c� c, b筺 li襫 r髏 tay l筰. ")
	end
end;
