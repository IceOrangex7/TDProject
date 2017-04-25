local transform;
local gameObject;

SettingsPanel = {}
local this = SettingsPanel


function SettingsPanel.Awake(obj)
	gameObject = obj
	transform = obj.transform
	
	this.InitPanel()
end

function SettingsPanel.InitPanel()
	this.anim = transform:FindChild("Bg"):GetComponent("Animator")
	this.btnClose = transform:FindChild("Bg/ButtonClose").gameObject
end