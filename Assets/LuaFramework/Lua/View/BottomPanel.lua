local transform;
local gameObject;

BottomPanel = {}

local this = BottomPanel


--启动事件--
function BottomPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
end

--初始化面板--
function BottomPanel.InitPanel()
	this.btnSettings = transform:FindChild("ButtonSettings").gameObject;
	this.btnPeople = transform:FindChild("ButtonPeople").gameObject;
	this.btnDialog = transform:FindChild("ButtonDialog").gameObject;
end
