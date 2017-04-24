require "Common/define"
require "View/SettingsPanel"

SettingsCtrl = {};
local this = SettingsCtrl;

local transform;
local gameObject;
local lua

--��������--
function SettingsCtrl.New()
	return this;
end

function SettingsCtrl.Awake()
	panelMgr:CreatePanel('Settings', this.OnCreate);
end

--�����¼�--
function SettingsCtrl.OnCreate(obj)
	gameObject = obj;
	transform = obj.transform
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(SettingsPanel.btnClose, this.OnClick);
end

--�����¼�--
function SettingsCtrl.OnClick(go)
	
end
