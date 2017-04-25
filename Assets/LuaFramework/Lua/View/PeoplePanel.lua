local transform;
local gameObject;

PeoplePanel = {}
local this = PeoplePanel


function PeoplePanel.Awake(obj)
	gameObject = obj
	transform = obj.transform
	
	this.InitPanel()
end

function PeoplePanel.InitPanel()
	this.anim = transform:FindChild("Bg"):GetComponent("Animator")
	this.btnClose = transform:FindChild("Bg/ButtonClose").gameObject
end