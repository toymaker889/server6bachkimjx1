-- Created by fangjieying 2003-5-17
-- 《流星·刀法》
-- 学会技能天外流星
-- 天忍，80级以上可用
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(362)
	if(party ~= "tianren") then							-- 不是天忍
		Msg2Player("B筺 nghi猲 c鴘 L璾 Tinh - o ph竝  頲 n鯽 ng祔, nh璶g v蒼 ch璦 l躰h ng� 頲 g�. ")
		return 1
	elseif(GetLever < 80) then							-- 是天忍但未到80级
		Msg2Player("B筺 nghi猲 c鴘 L璾 Tinh - o ph竝  頲 n鯽 ng祔, l躰h ng� 頲 r蕋 輙. ")
		return 1
	elseif(skill ~= -1) then							-- 已学过该技能
		Msg2Player("B筺  nghi猲 c鴘 k� L璾 Tinh - o ph竝, nh璶g v蒼 ch璦 h鋍 頲 g�. ")
		return 1
	else
		AddMagic(362,1)										-- 学会技能
		Msg2Player("H鋍 頲 k� n╪g Thi猲 Ngo筰 L璾 Tinh. ")
		return 0
	end
end