-- 大理城崇圣寺千寻塔 战斗NPC 盗贼01（翠烟门50级任务）
-- by：Dan_Deng(2003-07-27)

function OnDeath()
	UTask_cy = GetTask(6)
	if (UTask_cy >= 50*256+32) and (UTask_cy < 50*256+50) and (HaveItem(5) == 0) then		--50级任务中且无道具
		UTask_cy = SetBit(UTask_cy,1,1)
		if (UTask_cy == 50*256+32+7) then		--如果够(bin(100 + 010 + 001))
			SetTask(6,50*256+32)
			AddEventItem(5)
			Msg2Player("Цnh b筰 b鋘 cp 畂箃 v� V� ng Quan  c馻 b鋘 cp ")
			AddNote("Цnh b筰 b鋘 cp 畂箃 v� V� ng Quan  c馻 b鋘 cp ")
		else
			SetTask(6,UTask_cy)
			Msg2Player("Цnh b筰 b鋘 cp, nh璶g kh玭g t譵 th蕐 V� уng Quan  ")		--要不要提示玩家？
		end
	end
end;
