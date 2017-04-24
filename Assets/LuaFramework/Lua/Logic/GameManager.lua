require "Common/define"

require "Controller/SettingsCtrl"
require "Controller/BottomCtrl"

GameManager = {}

local this = GameManager

function GameManager.LuascriptPanel()
	return 'Bottom','Settings'
end

function GameManager.OnInitOk()
	AppConst.SocketPort = 2012;
	AppConst.SocketAddress = "127.0.0.1";
	networkMgr:SendConnect();
	
	BottomCtrl.Awake()
	SettingsCtrl.Awake()
	
end