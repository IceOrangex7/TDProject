require "Common/define"
require "View/PeoplePanel"

PeopleCtrl = {};
local this = PeopleCtrl;

local transform;
local gameObject;
local lua

--��������--
function PeopleCtrl.New()
	return this;
end

function PeopleCtrl.Awake()
	panelMgr:CreatePanel('People', this.OnCreate);
end

--�����¼�--
function PeopleCtrl.OnCreate(obj)
	gameObject = obj;
	transform = obj.transform
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(PeoplePanel.btnClose, this.OnHide);
end

--�����¼�--
function PeopleCtrl.OnClick(go)
	this.OnShow()
end

function PeopleCtrl.OnShow()
	PeoplePanel.anim:SetBool("IsShow",true)
end

function PeopleCtrl.OnHide()
	PeoplePanel.anim:SetBool("IsShow",false)
end