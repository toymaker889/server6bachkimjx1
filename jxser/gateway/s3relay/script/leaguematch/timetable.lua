
_tmp_calender = {
	weekend =  -- 2 ng�y cu�i tu�n, ��u 8 tr�n, t� 18h~19h ��n 19~20h
	{
		{18*60, 4},	
		{19*60, 4},
	},
	common = -- c�c ng�y ��u tu�n t� th� 2 ��n th� 6
	{	
		-- {19*60, 4}, 
		{18*60, 4}, 
		
		
		-------------------------------------------------------------------
		-- {16*60, 4}, 
		-- {17*60, 4},	
		-------------------------------------------------------------------
	}
}

--��������
-- ���ͣ�1��˫�ˣ�2�����ɣ�3��ʦͽ��4�����ˣ�5����ϵ��ˣ�6��ͬϵ˫�ˣ�7�����˫��
WLLS_SEASON_TB = {
	--[ID]={����, 	��ʼ����,	��������,	��������,	�ճ̰���}
	[0] = {2,		0,			0,			0,			{}},	--�������������������
	--[ID]={the loai(1=>7), 	ngay bat dau,	ngay ket thuc,	so tran toi da,	the lich}
	-- 1=   Song ��u t� do
	-- 2=  ��n ��u m�n ph�i
	-- 3=  song ��u s� ��
	-- 4=  tam ��u t� do
	-- 5= ��n ��u t� do
	-- 6= song ��u c�ng h� = sau nay bi loai bo
	-- 7= song ��u nam n� = sau nay bi loai bo
	-- n�m 2019
	[40] = {5,		190108,		190128,		48,		_tmp_calender},
	[41] = {5,		190208,		190228,		48,		_tmp_calender},
	[42] = {5,		190308,		190328,		48,		_tmp_calender},
	[43] = {5,		190408,		190428,		48,		_tmp_calender},
	[44] = {5,		190508,		190528,		48,		_tmp_calender},
	[45] = {5,		190608,		190628,		48,		_tmp_calender},
	[46] = {5,		190708,		190728,		48,		_tmp_calender},
	[47] = {5,		190808,		190828,		48,		_tmp_calender},
	[48] = {5,		190908,		190928,		48,		_tmp_calender},
	[49] = {5,		191008,		191028,		48,		_tmp_calender},
	[50] = {5,		191108,		191128,		48,		_tmp_calender},
	[51] = {5,		191208,		191228,		48,		_tmp_calender},
	
	-- 15������ 2020
	[52] = {5,		200108,		200128,		48,		_tmp_calender},
	[53] = {5,		200208,		200228,		48,		_tmp_calender},
	[54] = {5,		200308,		200328,		48,		_tmp_calender},
	[55] = {5,		200408,		200428,		48,		_tmp_calender},
	[56] = {5,		200508,		200528,		48,		_tmp_calender},
	[57] = {5,		200608,		200628,		48,		_tmp_calender},
	[58] = {5,		200708,		200728,		48,		_tmp_calender},
	[59] = {5,		200808,		200828,		48,		_tmp_calender},
	[60] = {5,		200908,		200928,		48,		_tmp_calender},
	[61] = {5,		201008,		201028,		48,		_tmp_calender},
	[62] = {5,		201108,		201128,		48,		_tmp_calender},
	[63] = {5,		201208,		201228,		48,		_tmp_calender},
	
	-- Update l�ch cho n�m 2021
	[64] = {5,		210101,		210128,		120,		_tmp_calender},
	[65] = {5,		210201,		210228,		120,		_tmp_calender},
	[66] = {5,		210301,		210328,		120,		_tmp_calender},
	[67] = {5,		210401,		210428,		120,		_tmp_calender},
	[68] = {5,		210501,		210528,		120,		_tmp_calender},
	[69] = {5,		210601,		210628,		120,		_tmp_calender},
	[70] = {5,		210701,		210728,		120,		_tmp_calender},
	[71] = {5,		210801,		210828,		120,		_tmp_calender},
	[72] = {5,		210901,		210928,		120,		_tmp_calender},
	[73] = {5,		211001,		211028,		120,		_tmp_calender},
	[74] = {5,		211101,		211128,		120,		_tmp_calender},
	[75] = {5,		211201,		211228,		120,		_tmp_calender},
	
	-- Update l�ch cho n�m 2022
	[76] = {5,		220101,		220128,		120,		_tmp_calender},
	[77] = {5,		220201,		220228,		120,		_tmp_calender},
	[78] = {5,		220301,		220328,		120,		_tmp_calender},
	[79] = {5,		220401,		220428,		120,		_tmp_calender},
	[80] = {5,		220501,		220528,		120,		_tmp_calender},
	[81] = {5,		220601,		220628,		120,		_tmp_calender},
	[82] = {5,		220701,		220728,		120,		_tmp_calender},
	[83] = {5,		220808,		220828,		120,		_tmp_calender},
	[84] = {5,		220908,		220928,		120,		_tmp_calender},
	[85] = {5,		221008,		221028,		120,		_tmp_calender},
	[86] = {5,		221108,		221128,		120,		_tmp_calender},
	[87] = {5,		221208,		221228,		120,		_tmp_calender},
}

--��β�������������⼫�����
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999998,	999998,	0,	_tmp_calender}
WLLS_SEASON_TB[getn(WLLS_SEASON_TB)+1] = {2,	999999,	999999,	0,	_tmp_calender}

