local transform;
local gameObject;

BottomPanel = {}

local this = BottomPanel


--�����¼�--
function BottomPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
end

--��ʼ�����--
function BottomPanel.InitPanel()
	this.btnSettings = transform:FindChild("ButtonSettings").gameObject;
	this.btnPeople = transform:FindChild("ButtonPeople").gameObject;
	this.btnDialog = transform:FindChild("ButtonDialog").gameObject;
end
