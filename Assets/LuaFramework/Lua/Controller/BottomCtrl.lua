require "Common/define"
require "View/BottomPanel"

BottomCtrl = {};
local this = BottomCtrl;

local transform;
local gameObject;
local lua

--��������--
function BottomCtrl.New()
	return this;
end

function BottomCtrl.Awake()
	panelMgr:CreatePanel('Bottom', this.OnCreate);
end

--�����¼�--
function BottomCtrl.OnCreate(obj)
	gameObject = obj;
	transform = obj.transform
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(BottomPanel.btnSettings, this.OnSettingsClick);
	lua:AddClick(BottomPanel.btnPeople, this.OnPeopleClick);
	lua:AddClick(BottomPanel.btnDialog, this.OnDialogClick);
end


function BottomCtrl.OnSettingsClick(go)
	
end

function BottomCtrl.OnSettingsClick(go)
	
end

function BottomCtrl.OnSettingsClick(go)
	
end
