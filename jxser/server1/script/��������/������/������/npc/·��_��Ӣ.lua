-- 西北北区\昆仑派\npc\路人_丘英.lua
-- by xiaoyang (2004\4\20)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(6) == 1 then
		allbrother_0801_FindNpcTaskDialog(6)
		return 0;
	end
Uworld121 = GetTask(121)
	if (Uworld121 == 40 ) and (HaveItem(376) == 1 ) then
		Talk(7,"Uworld121_qiuying","Xin h醝 c� ph秈 l� Kh﹗ Anh?","Ai d竚 g鋓 th糿g i danh c馻 l穙?","T筰 h� ph鬾g l謓h c馻 H� c� nng n y","M� Tuy誸? Ngi b筺 kia qua y ng錳, u鑞g 輙 tr� d飊g 輙 甶觤 t﹎. ","Kh玭g c莕 u! � y c� 1 v藅 giao cho ngi","Зy ch輓h l� kh╪ l鬭 M� Tuy誸 lu玭 mang b猲 m譶h! Ngi b筺 b�,產 t�!","H� c� nng n鉯 r籲g ngi nh譶 th蕐 kh╪ l鬭 n祔 t� nhi猲 s� hi觰 r�!")
	elseif (Uworld121 == 40 ) and (HaveItem(376) == 0 ) then
		Talk(1,"","Ngi kh玭g 產ng a v韎 ta ch�? V藅 g桩﹗?")
	elseif (Uworld121 >= 50) then
		Talk(1,"","M� Tuy誸 c� n鉯 qua v韎 ngi nh鱪g g� kh玭g? Чi lo筰 nh� bao gi� th� ta c� th� g苝 n祅g� ")
	else
		Talk(1,"","Kh玭g c� vi謈 g� th� ng c� n qu蕐 r莥 ta!")
	end
end

function Uworld121_qiuying()
	Talk(3,"","Hmm...! C竔 l穙 gi� Dng H� m� x鴑g ng 頲 M� Tuy誸 gi髉  nh� th� sao. Nh璶g m� M� Tuy誸 c騨g  a kh╪ l鬭 cho ta, l筰 nh� ta gi髉 h緉, t蕋 nhi猲 s� ph秈 c� nguy猲 nh﹏!","Th玦 頲 ngi b筺 b� h穣 nghe y, ta s� n鉯 cho ngi nghe k� ho筩h l莕 n祔 c馻 C玭 L玭","Ta  hi觰! C竜 t� ")
	DelItem(376)
	Msg2Player("Bi誸 頲 k� ho筩h c馻 C玭 L玭, quay v� b竜 c竜 Dng H� ")
	AddNote("Bi誸 頲 k� ho筩h c馻 C玭 L玭, quay v� b竜 c竜 Dng H� ")
	SetTask(121,50) --设置任务变量为50
end
