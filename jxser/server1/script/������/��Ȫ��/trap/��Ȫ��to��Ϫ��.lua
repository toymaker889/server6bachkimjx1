--江南区 龙泉村to清溪洞
--Trap ID：江南区 106

function main(sel)
	if (GetLevel() >= 5) then	
		SetFightState(1);
		NewWorld(198, 1522, 2955);
		AddTermini(211)
	else
		Talk(1,"","Ph輆 trc nguy hi觤! Xin h穣 quay v� r蘮 luy謓 th猰!")
	end
end;
