require "Common/define"
require "View/BottomPanel"
require "Controller/SettingsCtrl"
require "Controller/PeopleCtrl"

BottomCtrl = {};
local this = BottomCtrl;

local transform;
local gameObject;
local lua

--构建函数--
function BottomCtrl.New()
	return this;
end

function BottomCtrl.Awake()
	panelMgr:CreatePanel('Bottom', this.OnCreate);
end

--启动事件--
function BottomCtrl.OnCreate(obj)
	gameObject = obj;
	transform = obj.transform
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(BottomPanel.btnSettings, this.OnSettingsClick);
	lua:AddClick(BottomPanel.btnPeople, this.OnPeopleClick);
	lua:AddClick(BottomPanel.btnDialog, this.OnDialogClick);
end


function BottomCtrl.OnSettingsClick(go)
	SettingsCtrl.OnShow()
end

function BottomCtrl.OnPeopleClick(go)
	PeopleCtrl.OnShow()
end

function BottomCtrl.OnDialogClick(go)
	
end
