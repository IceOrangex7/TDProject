require "Common/define"
require "Controller/BottomCtrl"
require "Controller/SettingsCtrl"
require "Controller/PromptCtrl"
require "Controller/MessageCtrl"
require "Controller/PeopleCtrl"

CtrlManager = {};
local this = CtrlManager;
local ctrlList = {};	--控制器列表--

function CtrlManager.Init()
	logWarn("CtrlManager.Init----->>>");
	ctrlList[CtrlNames.Bottom] = BottomCtrl.New();
	ctrlList[CtrlNames.Settings] = SettingsCtrl.New();
	ctrlList[CtrlNames.People] = PeopleCtrl.New();
	--ctrlList[CtrlNames.Bottom] = BottomCtrl.New();
	--ctrlList[CtrlNames.Settings] = SettingsCtrl.New();
	return this;
end

--添加控制器--
function CtrlManager.AddCtrl(ctrlName, ctrlObj)
	ctrlList[ctrlName] = ctrlObj;
end

--获取控制器--
function CtrlManager.GetCtrl(ctrlName)
	return ctrlList[ctrlName];
end

--移除控制器--
function CtrlManager.RemoveCtrl(ctrlName)
	ctrlList[ctrlName] = nil;
end

--关闭控制器--
function CtrlManager.Close()
	logWarn('CtrlManager.Close---->>>');
end