-------------------------------------------------------------------------
-- FileName		:	战斗_界流风.lua
-- Author		:	xiaoyang
-- CreateTime	:	2004-12-15 14:29:59
-- Desc			:	界流风
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")

function OnDeath()
Uworld1001 = nt_getTask(1001)
	if (Uworld1001 == 100 ) then
		SetMemberTask(1001, 100, 110, newtask2)
	end
end

function newtask2()
	AddOwnExp(50000)
	AddExp_Skill_Extend(50000)
	Msg2Player("B筺 l蕐 頲 Ho祅g Kim L﹏.")
	Msg2Player("B筺 c� th� v� Чi L� g苝 M筩 S莡.")
	Talk(1, "", "Ho祅g Kim L﹏ � y! Ngi c莔 甶! Th� n祔 h筰 c� i C玭g t� ta! Зy l� ma v藅, ngi h穣 c萵 th薾!")
end
