-------------------------------------------------------------------------
-- FileName		:	enemy_hanjiangdudiaosou.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-25 15:04:14
-- Desc			:	ս��_����������
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")

function OnDeath()
Uworld1002 = nt_getTask(1002)
	if (Uworld1002 == 215 ) then
		Talk(1,"Uworld1002_give","Long �o�n � ��y, ng��i l�y �i......")
	end
end

function zhongtask4()
	AddOwnExp(230000)
	Msg2Player("B�n nh�n ���c Chi�n th��ng Long �o�n, quay v� g�p Ph� Nam B�ng.")

end

function Uworld1002_give()

	SetMemberTask(1002,215,220,zhongtask4) 
	
end
