--Create by GGH
--��ԭʲ������

--ʲ������=����2+����2+��Ҷ2+����2+����2+ţ��2(����1,000�ľ���,�ɹ���50��)
--�۽�ʲ�����ӣ�ʲ������+��������ԭ��1(����5,000�ľ���,�ɹ���50��)
--�˱�ʲ�����ӣ��۽�ʲ������+��������ԭ��1(����30,000�㾭��,�ɹ���30��)
--�ٹ�ʲ�����ӣ��˱�ʲ������+��������ԭ��1(����100,000�㾭��,�ɹ���20��)
--ˮ��ʲ�����ӣ��ٹ�ʲ������+��������ԭ��1(����500,000��ľ���,�ɹ���10��)
--��ԭʲ�����ӣ�ˮ��ʲ������+��������ԭ��1(����100,000,000�㾭��,�ɹ���3��)
--���������
--1��������ȫ
--2��1000������
--�ӹ�����������ԭʲ����������ĸ���ʲ�����Ӻ���һ����ԭ�ϣ�1000������
--ʧ�ܽ�������ʲ�����ӣ�������ӹ�ǰ��ʲôʲ�����ӣ����ӹ������Ӳ�����ʧ��������1000�����ӡ�
--����˵���������ʱ��Ч��ʧ�������ʣ���ÿ����һСʱֻ�ܳ�һ����һ����ɫ�Գ���20,000,000�㾭��ĸ���ʲ������֮��Ͳ����ٳ��κ�ʲ�����ӡ�


function main(sel)
firsttime = GetTask(139)
num = GetTask(138)
msg={	     "B�n �� �n r�t nhi�u b�nh ch�ng, kh�ng th� �n th�m ���c n�a ",
	     "��ng c�p c�a b�n �� t�ng l�n ",
	     "B�n c�m th�y r�t no, ph�i ��i th�m ch�t n�a m�i c� th� �n b�nh ch�ng! ",
		 "B�n �� �n r�t nhi�u b�nh ch�ng, ��y l� c�i cu�i c�ng "
	    }



	if(num > 20000000)  then   --ʹ�þ������20,000,000�������ٳ�
		Msg2Player(msg[1])
		return 1
	else
		if (GetGameTime() > firsttime + 60 * 60) then
			AddOwnExp(200000000)  --����ֵ����200000000
			time=GetItemGenTime(sel)
		        name=GetName()
	    		WriteLog("Ng��i ch�i"..name.."T�i"..time.."�n h�t m�t c�i b�nh ch�ng Khu�t Nguy�n")
			Msg2Player(msg[2])
			SetTask(138,num+200000000)
			SetTask(139, GetGameTime())  --��¼��ǰ����ʱ��
			if(GetTask(138)>20000000) then
				Msg2Player(msg[4])
			end
			return 0
		elseif  (firsttime == 0) then
			AddOwnExp(200000000)  --����ֵ����200000000
			time=GetItemGenTime(sel)
		        name=GetName()
	    		WriteLog("Ng��i ch�i"..name.."T�i"..time.."�n h�t m�t c�i b�nh ch�ng Khu�t Nguy�n")
			Msg2Player(msg[2])
			SetTask(138,num+200000000)
			SetTask(139, GetGameTime())  --��¼��ǰ����ʱ��
			if(GetTask(138)>20000000) then
				Msg2Player(msg[4])
			end
			return 0	
		else
			Msg2Player(msg[3])
			return 1
		end

	end
end