--石鼓镇 路人 沈爷 新手任务还钱
-- By: Dan_Deng(2003-09-04)
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
	if allbrother_0801_CheckIsDialog(197) == 1 then
		allbrother_0801_FindNpcTaskDialog(197)
		return 0;
	end
	UTask_world23 = GetTask(23)
	if (UTask_world23 == 3) then		-- 任务启动
		if (GetSex() == 0) then
			Say("Sao h�? Mu鑞 ta x鉧 n� cho A To祅 �? Chuy謓  kh玭g kh�, nh璶g ngi ph秈 mang ti襫 n, 300 lng kh玭g thi誹 m閠 xu. ",2,"Gi髉 h� tr� ti襫 /W23_pay_yes","M芻 k� h� /W23_pay_no")
		else
			Say("Sao h�? Mu鑞 ta x鉧 n� cho A To祅 �? Chuy謓  kh玭g kh�, nh璶g ngi ph秈 mang ti襫 n, 300 lng kh玭g thi誹 m閠 xu. ",2,"Gi髉 h� tr� ti襫 /W23_pay_yes","M芻 k� h� /W23_pay_no")
		end
	elseif (UTask_world23 >= 6) then
		Talk(1,"","Л頲 r錳! V� ngi  thay h� tr� ti襫, ta s�  ngi kh醝 b� m蕋 m苩, kh玭g 甶 t譵 h� t輓h s� n鱝.")
	else				-- 非任务对话
		Talk(1,"","Ti襫 ti襫 ti襫! Th阨 bu鎖 n祔 c竔 g� c騨g l� ti襫. C� ti襫 l� l穙 t�, kh玭g ti襫 l� con r颽 r魌 u. ")
	end
end;

function W23_pay_yes()
	if (GetCash() >= 300) then
		Talk(2,"","ng xem thng ngi kh竎! Зy l� 300 lng c莔 l蕐! "," Ha ha! C� ti襫 t� nhi猲 d� n鉯 chuy謓.")
		SetTask(23,6)
		Pay(300)
		AddNote("A M� v� A To祅  tr� h誸 n� r錳, mau 甶 b竜 c竔 tin t鑤 l祅h n祔 cho h� 甶. ")
		Msg2Player("A M� v� A To祅  tr� h誸 n� r錳, mau 甶 b竜 c竔 tin t鑤 l祅h n祔 cho h� 甶. ")
	else
		Talk(1,""," ьi ta 甶 l蕐 300 lng ! ")
	end
end

function W23_pay_no()
end
