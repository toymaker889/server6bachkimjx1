-- 文件名　：gongjizuliwan.lua
-- 创建者　：wangjingjun
-- 内容　　：攻击助力丸 
-- 效果	   : 外功攻击速度增加 50% 内功攻击速度增加 10% 攻击力增加 100 点 命中增加 500 点 有效时间15分钟
-- 创建时间：2011-07-15 11:53:11

function main(nItemIndex)
	print("S� d鬾g r錳")
	local nTime = 15 * 60 *18
	local tbSkill = { 1120,261,258,260,}
		
	for i=1,getn(tbSkill) do
		AddSkillState(tbSkill[i], 1, 1, nTime)
	end	
	
	Msg2Player("Ngi  s� d鬾g" .. "K輈h C玭g Tr� L鵦 Ho祅")
	return 0
end