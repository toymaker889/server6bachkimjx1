--description: 中原北区 汴京府 路人16乞丐对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19
-- Update: Dan_Deng(2003-08-14)

function main(sel)
	UTask_tr = GetTask(4)
	Uworld38 = GetByte(GetTask(38),2)
	if (UTask_tr == 60*256+20) then
		UTask_trsub60 = GetByte(GetTask(28),4)
		if (UTask_trsub60 == 0) then 
			DelItem(131)			--处理重接任务后，玩家捡起任务道具的情况
			Say("Xin cho ch髏 ti襫 l�! ", 2, "Cho /yes1", "Kh玭g cho! /no")
		elseif (UTask_trsub60 == 2) then 
			Say("Xin cho ch髏 ti襫 l�! ", 2, "Cho /yes2", "Kh玭g cho! /no")
		elseif (UTask_trsub60 == 4) then 
			Say("Xin cho ch髏 ti襫 l�! ", 2, "Cho /yes3", "Kh玭g cho! /no")
		elseif (UTask_trsub60 == 10) then
			if (HaveItem(131) == 0) then
				AddEventItem(131)
				Talk(1,"","Thanh ki誱 n祔 m芻 d� kh玭g ng ti襫, nh璶g c騨g l� m閠 ch髏 t﹎ � c馻 ta, xin ng ch鑙 t�!")
			else
				Talk(1,"","X鴑g ng l� b筺 t鑤! Л頲! Ta nh薾 ngi l� h秓 huynh !")
			end
		end
	elseif (Uworld38 == 10) then		-- 少林入门任务进行中
		if ((HaveItem(121) == 1) and (HaveItem(122) == 1) and (HaveItem(218) == 1)) then		-- 赤铜矿、广藿香、坚晶石
			Say("Ch� c莕 cho ta ba m鉵 g� kh玭g ng gi� tr猲 ngi c馻 ngi c騨g 頲",2,"Cho ngi /SLenroll_S4_yes","Ch� l� gi� d鑙 m� th玦. Ki猲 quy誸 kh玭g cho /no")
		else
			Talk(1,"","V� hi謕 kk竎h n祔! Ti襫  r閚g th猲h thang! Xin b� th� cho k� h蘮 輙 b筩 l�!")
		end
	elseif ((Uworld38 == 20) and (HaveItem(219) == 0)) then		--任务中，证明书信丢了
		Talk(2,"","T� ra ngi c騨g ch� kh� h琻 ta ch髏 n祇!","Kh玭g sao! Ta vi誸 l筰 cho ngi b鴆 th� l� 頲.")
		AddEventItem(219)
	elseif (UTask_tr > 60*256+20) then
		Talk(1,"","X鴑g ng l� b筺 t鑤! Л頲! Ta nh薾 ngi l� h秓 huynh !")
	else
		Talk(1,"","V� thi誹 hi謕 n祔, h穣 ph竧 huy tinh th莕 hi謕 ngh躠 v� t� 甶! Th藅 ng thng cho Khi誹 h鉧 t� ta! Cho ta xin mi m蕐 v筺 lng 甶!")
--		Talk(1,"","乞丐：大侠，有酒吗？求你赏我一口酒喝吧！我可以没饭吃，可不能没酒喝啊。")
	end
end;

function SLenroll_S4_yes()
	Talk(1,"","X鴑g ng l� b筺 t鑤! Л頲! Ta nh薾 ngi l� h秓 huynh !")
	DelItem(121)
	DelItem(122)
	DelItem(218)
	AddEventItem(219)
	Uworld38 = SetByte(GetTask(38),2,20)
	SetTask(38,Uworld38)
	Msg2Player("Nh薾 頲 m閠 b鴆 th� t� tay ╪ m祔. ")
	AddNote("Nh薾 頲 m閠 b鴆 th� t� tay ╪ m祔. ")
end;

function yes1()
	if (GetCash() >= 10) then
		Pay(10)
		Talk(1,"","Ch� b蕐 nhi猽 th玦 �? H�! Sao keo ki謙 v藋! ")
		SetTask(28, SetByte(GetTask(28),4,2))
	else
		Talk(1,"","Xin l鏸! Ta kh玭g 甧m  ti襫.")
	end
end;

function yes2()
	if (GetCash() >= 50) then
		Pay(50)
		Talk(1,"","H�! ng tng ta l� ╪ m祔 th� d� xem thng nha! ")
		SetTask(28, SetByte(GetTask(28),4,4))
	else
		Talk(1,"","Ta kh玭g c� ti襫!.")
	end
end;

function yes3()
	if (GetCash() >= 100) then
		Pay(100)
		Talk(1,"","Ta t苙g ngi thanh ki誱 n祔, g鋓 l� ch髏 l遪g th祅h �! Xin ng t� ch鑙!")
		AddEventItem(131)
		Msg2Player("Nh薾 頲 thanh ki誱: Di謙 H錸 ")
		SetTask(28, SetByte(GetTask(28),4,10))
		AddNote("G苝 頲 ╪ m祔 trc c鯽 Tng qu鑓 t� � Bi謓 Kinh, b� th� li猲 ti誴 3 l莕, nh薾 � thanh ki誱 Di謙 H錸 ")
	else
		Talk(1,"","Ta th藅 l鵦 b蕋 t遪g t﹎! ")
	end
end;

function no()
	Talk(1,"","Tr猲 i n祔 ngi th蕐 l頸 qu猲 ngh躠 nhi襲 qu�! ")
end;
