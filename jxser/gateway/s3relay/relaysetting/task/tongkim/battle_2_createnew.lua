-- 国战宋金
-- DongZhi
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "T鑞g Kim Qu鑓 Chi課 t鎛g 甶襲 ng" );	--任务名称
	TaskTime( 19, 00 );				--启动时间
	TaskInterval(1440);				--间隔时间:一天
	TaskCountLimit(0);				--无次数限制
	
	OutputMsg("**************** T鑞g Kim Qu鑓 Chi課 nhi謒 v� kh雐 ng th祅h c玭g****************")	
end

function TaskContent()
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 then
		OutputMsg("**************** Create GUOZHAN New Battle ****************")	
		battle_StartNewIssue(2, 3);	
	zMsg2SubWorld  = "<color=yellow>Chi課 Trng Qu鑓 Chi課<color> <color=green>Thi猲 T�<color>  kh雐 ng, c竎 anh h飊g 2 bang chi誱 L﹎ An - Bi謓 Kinh h穣 chu萵 b� tinh th莕 s絥 s祅g n<color=pink> 21h<color> chi課 u."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
