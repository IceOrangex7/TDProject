require "Common/define"
require "View/SettingsPanel"

SettingsCtrl = {};
local this = SettingsCtrl;

local transform;
local gameObject;
local lua

--构建函数--
function SettingsCtrl.New()
	return this;
end

function SettingsCtrl.Awake()
	panelMgr:CreatePanel('Settings', this.OnCreate);
end

--启动事件--
function SettingsCtrl.OnCreate(obj)
	gameObject = obj;
	transform = obj.transform
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(SettingsPanel.btnClose, this.OnClick);
end

--单击事件--
function SettingsCtrl.OnClick(go)
	
end
