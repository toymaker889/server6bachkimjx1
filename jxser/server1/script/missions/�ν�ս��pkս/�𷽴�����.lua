Include("\\script\\missions\\宋金战场PK战\\宋金战场头文件.lua");

function OnDeath()

State = GetMissionV(1) ;
if (State ~= 2) then
return
end;

--if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

if (GetMissionV(5) >= (MAX_S_COUNT / 2) and GetMissionV(6) >= (MAX_J_COUNT / 2)) then

	if (random(100) > 70) then
	return
	end;

	AddEventItem(195);
	Msg2Player("B筺 l蕐 頲 Nh筩 Vng Ki誱! ");
end;


str1 = "<#>K誸 qu� chi課 d辌h T鑞g Kim: Ngi T鑞g "..GetName().."<#>Gi誸 頲 i tng phe Kim, phe T鑞g gi祅h 頲 th緉g l頸! ";
str = "<#>T鑤 qu�! [ "..GetName().."<#>]Gi誸 頲 tng Kim, ngi T鑞g ch髇g ta  th緉g tr薾 n祔! ";
Msg2MSAll(1, str1);
Msg2MSGroup(1, str, 1);
resultstr = WinBonus(1,2);
str1 = str1..resultstr;
SetMissionV(2,2);
SetMissionV(1,3);
AddGlobalCountNews(str1 , 3);
CloseMission(1);
end;