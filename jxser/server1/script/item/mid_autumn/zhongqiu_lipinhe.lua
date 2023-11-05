-- 中秋礼品盒脚本
-- lixin 2005-8-31

zq_tab_award = {	--中秋礼品盒可以获得的物品，概率，
	{	"B閠 m� c蕄 1",	0.43145	,	 528 ,	},
	{	"B閠 m� c蕄 2 ",	0.05	,	 529 ,	},
	{	"B閠 m� c蕄 3",	0.015	,	 530 ,	},
	{	"B閠 m� c蕄 4 ",	0.003	,	 531 ,	},
	{	"B閠 m� c蕄 5",	0.0005	,	 532 ,	},
	{	"B閠 m� c蕄 6",	0.00005	,	 533 ,	},
	{	"B閠 sen c蕄 1",	0.43145	,	 534 ,	},
	{	"B閠 sen c蕄 2 ",	0.05	,	 535 ,	},
	{	"B閠 sen c蕄 3 ",	0.015	,	 536 ,	},
	{	"B閠 sen c蕄 4 ",	0.003	,	 537 ,	},
	{	"B閠 sen c蕄 5 ",	0.0005	,	 538 ,	},
	{	"B閠 sen c蕄 6 ",	0.00005	,	 539 ,	},
}

function main()
	local base = 100000
	local sum = 0
	local num = random(1, base)

	for i = 1, getn( zq_tab_award ) do
		sum = sum + zq_tab_award[i][2] * 100000
		if( sum >= num ) then
			zq_award( zq_tab_award[i] )
			break
		end
	end
end

function zq_award( item )
	local name = item[1]
	AddEventItem( item[ 3 ] )
	Msg2Player("Ch骳 m鮪g, b筺 nh薾 頲 1 "..name)
	Talk(1,"","L� Quan: Ch骳 m鮪g ngi nh薾 頲 <color=yellow>"..name.."<color>!")
	WriteLog(date("%y-%m-%d,%H:%M").."Account==["..GetAccount().."] RoleName=="..GetName()..", m� h閜 qu� Trung Thu nh薾 頲 "..name)
end