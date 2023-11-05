Include("\\script\\activitysys\\config\\44\\variables.lua") 
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");



local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
local TaskVarIdx_YeSou		= 23
-------局部变量定义 结束---
tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "催怪但莲藕饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "催怪但⑻豆饼",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "催怪但鱼头",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "玩家点击勤劳老农",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T﹜ H� Thng Nh﹏"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>L謓h b礽 boss Kim Quang l� m閠 v藅 ph萴 v� c飊g qu� gi�, n誹 g鋓 h緉 ra v� nh b筰 頲 h緉, ph莕 thng s� v� c飊g gi� tr� ?"} },
		{"AddDialogOpt",	{"Ta mu鑞 i Kim B礽.",5} },
		{"AddDialogOpt",	{"Ta mu鑞 i Ng鋍 B礽.",6} },
                
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ta mu鑞 i Kim B礽",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Kim B礽",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M秐h Kim B礽",{tbProp={6,1,1774,1,0,0},},100} },
                {"AddOneMaterial",	{"2000000 lng",{nJxb=2000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1481,1,0,0},nExpiredTime=43200,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ta mu鑞 i Ng鋍 B礽",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Ng鋍 B礽",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M秐h Ng鋍 B礽",{tbProp={6,1,1775,1,0,0},},200} },
                {"AddOneMaterial",	{"5000000 lng",{nJxb=5000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 tham gia ho箃 ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1482,1,0,0},nExpiredTime=43200,},1,"[T輓h n╪g socola] [H頿 th祅h socola]"} },
	},
}