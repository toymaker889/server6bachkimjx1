-- Created by fangjieying 2003-5-17
-- 《五毒诅咒·卷三》
-- 学会技能断筋腐骨
-- 五毒，80级以上可用
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(390) 
	if(party ~= "wudu") then							-- 不是五毒
		Msg2Player("B筺 nghi猲 c鴘 Ng� чc Nhi誴 T﹎ Thu藅 - Quy觧 3 頲 n鯽 ng祔, nh璶g v蒼 ch璦 l躰h ng� 頲 g�. ")
		return 1
	elseif(GetLever < 80) then							-- 是五毒但未到80级
		Msg2Player("B筺 nghi猲 c鴘 Ng� чc Nhi誴 T﹎ Thu藅 - Quy觧 3 頲 n鯽 ng祔, l躰h ng� 頲 r蕋 輙. ")
		return 1
	elseif(skill ~= -1) then							-- 已学过该技能
		Msg2Player("B筺  nghi猲 c鴘 k� Ng� чc Nhi誴 T﹎ Thu藅 - Quy觧 3, nh璶g v蒼 ch璦 h鋍 頲 g�. ")
		return 1
	else
		AddMagic(390,0)										-- 学会技能
		Msg2Player("H鋍 頲 k� n╪g 筺 C﹏ h� C鑤. ")
		return 0
	end
end