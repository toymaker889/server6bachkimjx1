--西南北区 成都府 路人18卖蜀绣的对话
--author: yuanlan	
--date: 2003/3/10
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2)
	if (UTask_tm == 10*256+20) then			--唐门十级任务过程中
		Talk(2, "", "Ta b竛 � y u l� h祅g th猽 T� Xuy猲 c馻 danh gia T玭 Uy觧. C� 蕐 r蕋 n鎖 ti課g � ph� Th祅h Й n祔, 阯g kim m騣 ch� r蕋 kh衞, ng u c� ph�, Nh� c� ta � g莕 qu竛 tr� Ph� dung phia ng nam th祅h. ", "Х l� danh gia th猽, ch綾 h糿 trong nh� kim th猽 kh玭g thi誹, c� l� c� 蕐 �  c� th� nghe 頲 m閠 s� tin t鴆 v� Ma V� Ch﹎.")
		AddNote("T筰 ch� Mai Nng 頲 bi誸 Danh gia th猽 l鬭 T� Xuy猲 T玭 Uy觧 c� 阯g kim m騣 ch� r蕋 k� t礽, � g莕 qu竛 tr� Ph� Dung ph輆 ng nam th祅h. ")
		SetTask(2,10*256+30)
	elseif (UTask_tm == 10*256+30) then			--唐门十级任务过程中
		Talk(1, "", "Ta b竛 � y u l� h祅g th猽 T� Xuy猲 c馻 danh gia T玭 Uy觧. C� 蕐 r蕋 n鎖 ti課g � ph� Th祅h Й n祔, 阯g kim m騣 ch� r蕋 kh衞, ng u c� ph�, Nh� c� ta � g莕 qu竛 tr� Ph� dung phia ng nam th祅h. ")
	elseif (random(0,1) == 0) then
		Talk(1,"","Ngi � u n v藋? H祅g th猽 T� Xuy猲 n祔 l� 'Th鬰 Trung Chi B秓' c馻 ch髇g ta, ngi th� nh譶 xem, 阯g may ho祅 ch豱h, 阯g c総 b鉵g nho竛g, ch苩 ch� 猰 d辵, y ng l� th� c玭g thng h筺g , mua m閠 c竔 v� l祄 k� ni謒 甶!")
	else
		Talk(1,"","Th輈h b� 'ph� dung l� ng�' kh玭g? C� th蕐 th猽 gi鑞g y nh� th藅 kh玭g?")
	end
end;
