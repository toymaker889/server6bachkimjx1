--description: 唐门50级任务 青城山响水洞怪物
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)
-- 这个任务已经够复杂了，想把它取消，放到其它任务中去用。

function OnDeath()
	UTask_tm = GetTask(2);
	if ((UTask_tm == 50*256+80) and (HaveItem(48) == 0)) then
		Msg2Player("L蕐 頲 竚 kh� ph� gi� m筼, h鉧 ra ch� l� m閠 quy觧 s竎h kh玭g c� ch� ")
	end
end;
