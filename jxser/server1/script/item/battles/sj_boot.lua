IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\item\\battles\\addmarshalpoint.lua")

function add493()
		level = random(1,3);
		AddSkillState(493, level, 0, 1080 )	--��һ����������
		Msg2Player("<#> B�n nh�n ���c <color=0xB5FDD7> t�ng t�c �� di chuy�n trong 1 ph�t"..(level*10).."<#> %")	
end

Tab={add493}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
	if( IsMyItem( nItemIndex ) ) then
		i = random(getn(Tab))
		Tab[i]();
		BT_SetData(PL_GETITEM, BT_GetData(PL_GETITEM) + 1);
		bt_addtotalpoint(BT_GetTypeBonus(PL_GETITEM, GetCurCamp()))
		checkbattlerule(BT_GetTypeBonus(PL_GETITEM, GetCurCamp()))
		BT_SortLadder();
		BT_BroadSelf();
		return 0;	-- ɾ����Ʒ
	end
end
