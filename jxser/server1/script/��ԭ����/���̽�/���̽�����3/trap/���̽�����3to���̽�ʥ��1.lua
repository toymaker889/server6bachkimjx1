--description: 中原北区 天忍教室内3to天忍教圣洞1 天忍教出师任务
--author: yuanlan	
--date: 2003/5/20
--Trap ID：中原北区 5
-- Update: Dan_Deng(2003-08-14)

function main(sel)
	UTask_tr = GetTask(4);
--	if (GetFaction() ~= "tianren") then
	if (UTask_tr >= 60*256+50) and (GetFaction() == "tianren") then
		NewWorld(51, 1666, 3291)
		SetFightState(1)						--玩家转换成战斗状态
	elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then
		Talk(1,"","B筺 ch璦 a 5 thanh 畂秐 ki誱 cho Ho祅 Nhan H飊g Li謙, ch璦 th� v祇 Th竛h ng.")
		SetPos(1749, 3081)						--设置走出Trap点
	else
		Talk(1,"","Зy l� Th竛h ng Thi猲 Nh蒼 gi竜, nh鱪g ngi  v祇 kh玭g th� tr� ra.")
		SetPos(1749, 3081)						--设置走出Trap点
	end
end;
