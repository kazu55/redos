local project = {} 
local packaged = true 
local baseRequire = require 
local require = function(path)
    for _,v in pairs(project)do
        for name,b in pairs(v)do
            if(name==path)then
                return b()
            end
        end
    end
    return baseRequire(path);
end
local getProject = function(subDir)
    if(subDir~=nil)then
        return project[subDir]
    end
    return project
end
project['objects'] = {}project['libraries'] = {}project['default'] = {}project['objects']['Animation'] = function(...)local cda=require("utils").getValueFromXML
local dda=require("basaltEvent")
local __b,a_b,b_b,c_b,d_b,_ab=math.floor,math.sin,math.cos,math.pi,math.sqrt,math.pow
local aab=function(_dc,adc,bdc)return _dc+ (adc-_dc)*bdc end;local bab=function(_dc)return _dc end
local cab=function(_dc)return 1 -_dc end;local dab=function(_dc)return _dc*_dc*_dc end;local _bb=function(_dc)return
cab(dab(cab(_dc)))end;local abb=function(_dc)return
aab(dab(_dc),_bb(_dc),_dc)end;local bbb=function(_dc)return a_b(
(_dc*c_b)/2)end
local cbb=function(_dc)return cab(b_b((
_dc*c_b)/2))end
local dbb=function(_dc)return- (b_b(c_b*x)-1)/2 end
local _cb=function(_dc)local adc=1.70158;local bdc=adc+1;return bdc*_dc^3 -adc*_dc^2 end;local acb=function(_dc)return _dc^3 end
local bcb=function(_dc)local adc=(2 *c_b)/3;return

_dc==0 and 0 or(_dc==1 and 1 or(-2 ^ (10 *_dc-10)*
a_b((_dc*10 -10.75)*adc)))end
local function ccb(_dc)return _dc==0 and 0 or 2 ^ (10 *_dc-10)end
local function dcb(_dc)return _dc==0 and 0 or 2 ^ (10 *_dc-10)end
local function _db(_dc)local adc=1.70158;local bdc=adc*1.525;return
_dc<0.5 and( (2 *_dc)^2 *
( (bdc+1)*2 *_dc-bdc))/2 or
(
(2 *_dc-2)^2 * ( (bdc+1)* (_dc*2 -2)+bdc)+2)/2 end;local function adb(_dc)return
_dc<0.5 and 4 *_dc^3 or 1 - (-2 *_dc+2)^3 /2 end
local function bdb(_dc)
local adc=(2 *c_b)/4.5
return
_dc==0 and 0 or(_dc==1 and 1 or
(
_dc<0.5 and- (2 ^ (20 *_dc-10)*
a_b((20 *_dc-11.125)*adc))/2 or
(2 ^ (-20 *_dc+10)*a_b((20 *_dc-11.125)*adc))/2 +1))end
local function cdb(_dc)return
_dc==0 and 0 or(_dc==1 and 1 or
(
_dc<0.5 and 2 ^ (20 *_dc-10)/2 or(2 -2 ^ (-20 *_dc+10))/2))end;local function ddb(_dc)return
_dc<0.5 and 2 *_dc^2 or 1 - (-2 *_dc+2)^2 /2 end;local function __c(_dc)return
_dc<0.5 and 8 *
_dc^4 or 1 - (-2 *_dc+2)^4 /2 end;local function a_c(_dc)return
_dc<0.5 and 16 *
_dc^5 or 1 - (-2 *_dc+2)^5 /2 end;local function b_c(_dc)
return _dc^2 end;local function c_c(_dc)return _dc^4 end
local function d_c(_dc)return _dc^5 end;local function _ac(_dc)local adc=1.70158;local bdc=adc+1;return
1 +bdc* (_dc-1)^3 +adc* (_dc-1)^2 end;local function aac(_dc)return 1 -
(1 -_dc)^3 end
local function bac(_dc)local adc=(2 *c_b)/3;return

_dc==0 and 0 or(_dc==1 and 1 or(
2 ^ (-10 *_dc)*a_b((_dc*10 -0.75)*adc)+1))end
local function cac(_dc)return _dc==1 and 1 or 1 -2 ^ (-10 *_dc)end;local function dac(_dc)return 1 - (1 -_dc)* (1 -_dc)end;local function _bc(_dc)return 1 - (
1 -_dc)^4 end;local function abc(_dc)
return 1 - (1 -_dc)^5 end;local function bbc(_dc)
return 1 -d_b(1 -_ab(_dc,2))end
local function cbc(_dc)return d_b(1 -_ab(_dc-1,2))end
local function dbc(_dc)return

_dc<0.5 and(1 -d_b(1 -_ab(2 *_dc,2)))/2 or(d_b(1 -_ab(-2 *_dc+2,2))+1)/2 end
local function _cc(_dc)local adc=7.5625;local bdc=2.75
if(_dc<1 /bdc)then return adc*_dc*_dc elseif(_dc<2 /bdc)then local cdc=_dc-
1.5 /bdc;return adc*cdc*cdc+0.75 elseif(_dc<2.5 /bdc)then local cdc=_dc-
2.25 /bdc;return adc*cdc*cdc+0.9375 else
local cdc=_dc-2.625 /bdc;return adc*cdc*cdc+0.984375 end end;local function acc(_dc)return 1 -_cc(1 -_dc)end;local function bcc(_dc)return
x<0.5 and(1 -
_cc(1 -2 *_dc))/2 or(1 +_cc(2 *_dc-1))/2 end
local ccc={linear=bab,lerp=aab,flip=cab,easeIn=dab,easeInSine=cbb,easeInBack=_cb,easeInCubic=acb,easeInElastic=bcb,easeInExpo=dcb,easeInQuad=b_c,easeInQuart=c_c,easeInQuint=d_c,easeInCirc=bbc,easeInBounce=acc,easeOut=_bb,easeOutSine=bbb,easeOutBack=_ac,easeOutCubic=aac,easeOutElastic=bac,easeOutExpo=cac,easeOutQuad=dac,easeOutQuart=_bc,easeOutQuint=abc,easeOutCirc=cbc,easeOutBounce=_cc,easeInOut=abb,easeInOutSine=dbb,easeInOutBack=_db,easeInOutCubic=adb,easeInOutElastic=bdb,easeInOutExpo=cdb,easeInOutQuad=ddb,easeInOutQuart=__c,easeInOutQuint=a_c,easeInOutCirc=dbc,easeInOutBounce=bcc}local dcc={}
return
function(_dc)local adc={}local bdc="Animation"local cdc;local ddc={}local __d=0;local a_d=false;local b_d=1;local c_d=false
local d_d=dda()local _ad=0;local aad;local bad=false;local cad=false;local dad="easeOut"local _bd;local function abd(_cd)for acd,bcd in pairs(_cd)do
bcd(adc,ddc[b_d].t,b_d)end end
local function bbd(_cd)if(b_d==1)then
_cd:animationStartHandler()end;if(ddc[b_d]~=nil)then abd(ddc[b_d].f)
__d=ddc[b_d].t end;b_d=b_d+1
if(ddc[b_d]==nil)then if(c_d)then b_d=1;__d=0 else
_cd:animationDoneHandler()return end end;if(ddc[b_d].t>0)then
cdc=os.startTimer(ddc[b_d].t-__d)else bbd(_cd)end end
local function cbd(_cd,acd)for n=1,#ddc do
if(ddc[n].t==_cd)then table.insert(ddc[n].f,acd)return end end
for n=1,#ddc do
if(ddc[n].t>_cd)then if
(ddc[n-1]~=nil)then if(ddc[n-1].t<_cd)then
table.insert(ddc,n-1,{t=_cd,f={acd}})return end else
table.insert(ddc,n,{t=_cd,f={acd}})return end end end
if(#ddc<=0)then table.insert(ddc,1,{t=_cd,f={acd}})return elseif(
ddc[#ddc].t<_cd)then table.insert(ddc,{t=_cd,f={acd}})end end
local function dbd(_cd,acd,bcd,ccd,dcd,_dd,add,bdd)local cdd=_bd;local ddd,___a;local a__a=""if(cdd.parent~=nil)then
a__a=cdd.parent:getName()end;a__a=a__a..cdd:getName()
cbd(ccd+0.05,function()
if(
add~=nil)then if(dcc[add]==nil)then dcc[add]={}end;if
(dcc[add][a__a]~=nil)then if(dcc[add][a__a]~=bdd)then
dcc[add][a__a]:cancel()end end
dcc[add][a__a]=bdd end;ddd,___a=dcd(cdd)end)
for n=0.05,bcd+0.01,0.05 do
cbd(ccd+n,function()
local b__a=math.floor(ccc.lerp(ddd,_cd,ccc[dad](n/bcd))+0.5)
local c__a=math.floor(ccc.lerp(___a,acd,ccc[dad](n/bcd))+0.5)_dd(cdd,b__a,c__a)if(add~=nil)then
if(n>=bcd-0.01)then if
(dcc[add][a__a]==bdd)then dcc[add][a__a]=nil end end end end)end end
adc={name=_dc,getType=function(_cd)return bdc end,getBaseFrame=function(_cd)if(_cd.parent~=nil)then
return _cd.parent:getBaseFrame()end;return _cd end,setMode=function(_cd,acd)
dad=acd;return _cd end,addMode=function(_cd,acd,bcd)ccc[acd]=bcd;return _cd end,generateXMLEventFunction=function(_cd,acd,bcd)
local ccd=function(dcd)
if(
dcd:sub(1,1)=="#")then
local _dd=_cd:getBaseFrame():getDeepObject(dcd:sub(2,dcd:len()))
if(_dd~=nil)and(_dd.internalObjetCall~=nil)then acd(_cd,function()
_dd:internalObjetCall()end)end else
acd(_cd,_cd:getBaseFrame():getVariable(dcd))end end;if(type(bcd)=="string")then ccd(bcd)elseif(type(bcd)=="table")then
for dcd,_dd in pairs(bcd)do ccd(_dd)end end;return _cd end,setValuesByXMLData=function(_cd,acd)bad=
cda("loop",acd)==true and true or false
if(
cda("object",acd)~=nil)then
local bcd=_cd:getBaseFrame():getDeepObject(cda("object",acd))if(bcd==nil)then
bcd=_cd:getBaseFrame():getVariable(cda("object",acd))end
if(bcd~=nil)then _cd:setObject(bcd)end end
if(acd["move"]~=nil)then local bcd=cda("x",acd["move"])
local ccd=cda("y",acd["move"])local dcd=cda("duration",acd["move"])
local _dd=cda("time",acd["move"])_cd:move(bcd,ccd,dcd,_dd)end
if(acd["size"]~=nil)then local bcd=cda("width",acd["size"])
local ccd=cda("height",acd["size"])local dcd=cda("duration",acd["size"])
local _dd=cda("time",acd["size"])_cd:size(bcd,ccd,dcd,_dd)end
if(acd["offset"]~=nil)then local bcd=cda("x",acd["offset"])
local ccd=cda("y",acd["offset"])local dcd=cda("duration",acd["offset"])
local _dd=cda("time",acd["offset"])_cd:offset(bcd,ccd,dcd,_dd)end
if(acd["textColor"]~=nil)then
local bcd=cda("duration",acd["textColor"])local ccd=cda("time",acd["textColor"])local dcd={}
local _dd=acd["textColor"]["color"]
if(_dd~=nil)then if(_dd.properties~=nil)then _dd={_dd}end;for add,bdd in pairs(_dd)do
table.insert(dcd,colors[bdd:value()])end end;if(bcd~=nil)and(#dcd>0)then
_cd:changeTextColor(bcd,ccd or 0,table.unpack(dcd))end end
if(acd["background"]~=nil)then
local bcd=cda("duration",acd["background"])local ccd=cda("time",acd["background"])local dcd={}
local _dd=acd["background"]["color"]
if(_dd~=nil)then if(_dd.properties~=nil)then _dd={_dd}end;for add,bdd in pairs(_dd)do
table.insert(dcd,colors[bdd:value()])end end;if(bcd~=nil)and(#dcd>0)then
_cd:changeBackground(bcd,ccd or 0,table.unpack(dcd))end end
if(acd["text"]~=nil)then local bcd=cda("duration",acd["text"])
local ccd=cda("time",acd["text"])local dcd={}local _dd=acd["text"]["text"]
if(_dd~=nil)then if(_dd.properties~=nil)then
_dd={_dd}end;for add,bdd in pairs(_dd)do
table.insert(dcd,bdd:value())end end;if(bcd~=nil)and(#dcd>0)then
_cd:changeText(bcd,ccd or 0,table.unpack(dcd))end end;if(cda("onDone",acd)~=nil)then
_cd:generateXMLEventFunction(_cd.onDone,cda("onDone",acd))end;if
(cda("onStart",acd)~=nil)then
_cd:generateXMLEventFunction(_cd.onDone,cda("onStart",acd))end
if
(cda("autoDestroy",acd)~=nil)then if(cda("autoDestroy",acd))then cad=true end end;dad=cda("mode",acd)or dad
if(cda("play",acd)~=nil)then if
(cda("play",acd))then _cd:play(bad)end end;return _cd end,getZIndex=function(_cd)return
1 end,getName=function(_cd)return _cd.name end,setObject=function(_cd,acd)_bd=acd;return _cd end,move=function(_cd,acd,bcd,ccd,dcd,_dd)_bd=
_dd or _bd
dbd(acd,bcd,ccd,dcd or 0,_bd.getPosition,_bd.setPosition,"position",_cd)return _cd end,offset=function(_cd,acd,bcd,ccd,dcd,_dd)_bd=
_dd or _bd
dbd(acd,bcd,ccd,dcd or 0,_bd.getOffset,_bd.setOffset,"offset",_cd)return _cd end,size=function(_cd,acd,bcd,ccd,dcd,_dd)_bd=_dd or
_bd
dbd(acd,bcd,ccd,dcd or 0,_bd.getSize,_bd.setSize,"size",_cd)return _cd end,changeText=function(_cd,acd,bcd,...)
local ccd={...}bcd=bcd or 0;_bd=obj or _bd;for n=1,#ccd do
cbd(bcd+n* (acd/#ccd),function()
_bd.setText(_bd,ccd[n])end)end;return _cd end,changeBackground=function(_cd,acd,bcd,...)
local ccd={...}bcd=bcd or 0;_bd=obj or _bd;for n=1,#ccd do
cbd(bcd+n* (acd/#ccd),function()
_bd.setBackground(_bd,ccd[n])end)end;return _cd end,changeTextColor=function(_cd,acd,bcd,...)
local ccd={...}bcd=bcd or 0;_bd=obj or _bd;for n=1,#ccd do
cbd(bcd+n* (acd/#ccd),function()
_bd.setForeground(_bd,ccd[n])end)end;return _cd end,add=function(_cd,acd,bcd)
aad=acd
cbd((bcd or _ad)+
(ddc[#ddc]~=nil and ddc[#ddc].t or 0),acd)return _cd end,wait=function(_cd,acd)_ad=acd;return _cd end,rep=function(_cd,acd)
if(
aad~=nil)then for n=1,acd or 1 do
cbd((wait or _ad)+
(ddc[#ddc]~=nil and ddc[#ddc].t or 0),aad)end end;return _cd end,onDone=function(_cd,acd)
d_d:registerEvent("animation_done",acd)return _cd end,onStart=function(_cd,acd)
d_d:registerEvent("animation_start",acd)return _cd end,setAutoDestroy=function(_cd,acd)
cad=acd~=nil and acd or true;return _cd end,animationDoneHandler=function(_cd)
d_d:sendEvent("animation_done",_cd)_cd.parent:removeEvent("other_event",_cd)if(cad)then
_cd.parent:removeObject(_cd)_cd=nil end end,animationStartHandler=function(_cd)
d_d:sendEvent("animation_start",_cd)end,clear=function(_cd)ddc={}aad=nil;_ad=0;b_d=1;__d=0;c_d=false;return _cd end,play=function(_cd,acd)
_cd:cancel()a_d=true;c_d=acd and true or false;b_d=1;__d=0
if(ddc[b_d]~=nil)then
if(
ddc[b_d].t>0)then cdc=os.startTimer(ddc[b_d].t)else bbd(_cd)end else _cd:animationDoneHandler()end;_cd.parent:addEvent("other_event",_cd)return _cd end,cancel=function(_cd)if(
cdc~=nil)then os.cancelTimer(cdc)c_d=false end
a_d=false;_cd.parent:removeEvent("other_event",_cd)return _cd end,internalObjetCall=function(_cd)
_cd:play(bad)end,eventHandler=function(_cd,acd,bcd)if(a_d)then
if(acd=="timer")and(bcd==cdc)then if(ddc[b_d]~=nil)then
bbd(_cd)else _cd:animationDoneHandler()end end end end}adc.__index=adc;return adc end
end; 
project['objects']['Button'] = function(...)local _a=require("Object")local aa=require("utils")
local ba=aa.getValueFromXML;local ca=require("tHex")
return
function(da)local _b=_a(da)local ab="Button"local bb="center"
local cb="center"_b:setZIndex(5)_b:setValue("Button")_b.width=12
_b.height=3
local db={init=function(_c)if(_b.init(_c))then _c.bgColor=_c.parent:getTheme("ButtonBG")
_c.fgColor=_c.parent:getTheme("ButtonText")end end,getType=function(_c)return
ab end,setHorizontalAlign=function(_c,ac)bb=ac;_c:updateDraw()return _c end,setVerticalAlign=function(_c,ac)
cb=ac;_c:updateDraw()return _c end,setText=function(_c,ac)
_b:setValue(tostring(ac))_c:updateDraw()return _c end,setValuesByXMLData=function(_c,ac)
_b.setValuesByXMLData(_c,ac)
if(ba("text",ac)~=nil)then _c:setText(ba("text",ac))end;if(ba("horizontalAlign",ac)~=nil)then
bb=ba("horizontalAlign",ac)end;if(ba("verticalAlign",ac)~=nil)then
cb=ba("verticalAlign",ac)end;return _c end,draw=function(_c)
if
(_b.draw(_c))then
if(_c.parent~=nil)then local ac,bc=_c:getAnchorPosition()
local cc,dc=_c:getSize()local _d=aa.getTextVerticalAlign(dc,cb)
for n=1,dc do
if(n==_d)then
local ad=_c:getValue()
_c.parent:setText(ac+ (cc/2 -ad:len()/2),bc+ (n-1),aa.getTextHorizontalAlign(ad,ad:len(),bb))
_c.parent:setFG(ac+ (cc/2 -ad:len()/2),bc+ (n-1),aa.getTextHorizontalAlign(ca[_c.fgColor]:rep(ad:len()),ad:len(),bb))end end end end end}return setmetatable(db,_b)end
end; 
project['objects']['Checkbox'] = function(...)local d=require("Object")local _a=require("utils")
local aa=_a.getValueFromXML
return
function(ba)local ca=d(ba)local da="Checkbox"ca:setZIndex(5)ca:setValue(false)
ca.width=1;ca.height=1;local _b="\42"
local ab={getType=function(bb)return da end,setSymbol=function(bb,cb)_b=cb;bb:updateDraw()return bb end,mouseHandler=function(bb,cb,db,_c)
if
(ca.mouseHandler(bb,cb,db,_c))then
if(cb==1)then if
(bb:getValue()~=true)and(bb:getValue()~=false)then bb:setValue(false)else
bb:setValue(not bb:getValue())end
bb:updateDraw()return true end end;return false end,touchHandler=function(bb,cb,db)return
bb:mouseHandler(1,cb,db)end,setValuesByXMLData=function(bb,cb)
ca.setValuesByXMLData(bb,cb)
if(aa("checked",cb)~=nil)then if(aa("checked",cb))then bb:setValue(true)else
bb:setValue(false)end end;return bb end,draw=function(bb)
if
(ca.draw(bb))then
if(bb.parent~=nil)then local cb,db=bb:getAnchorPosition()
local _c,ac=bb:getSize()local bc=_a.getTextVerticalAlign(ac,"center")if
(bb.bgColor~=false)then
bb.parent:drawBackgroundBox(cb,db,_c,ac,bb.bgColor)end
for n=1,ac do
if(n==bc)then
if(bb:getValue()==true)then
bb.parent:writeText(cb,
db+ (n-1),_a.getTextHorizontalAlign(_b,_c,"center"),bb.bgColor,bb.fgColor)else
bb.parent:writeText(cb,db+ (n-1),_a.getTextHorizontalAlign(" ",_c,"center"),bb.bgColor,bb.fgColor)end end end end end end,init=function(bb)
bb.parent:addEvent("mouse_click",bb)bb.parent:addEvent("mouse_up",bb)
if(ca.init(bb))then
bb.bgColor=bb.parent:getTheme("CheckboxBG")bb.fgColor=bb.parent:getTheme("CheckboxText")end end}return setmetatable(ab,ca)end
end; 
project['objects']['Dropdown'] = function(...)local d=require("Object")local _a=require("utils")
local aa=require("utils").getValueFromXML
return
function(ba)local ca=d(ba)local da="Dropdown"ca.width=12;ca.height=1;ca:setZIndex(6)
local _b={}local ab;local bb;local cb=true;local db="left"local _c=0;local ac=16;local bc=6;local cc="\16"local dc="\31"local _d=false
local ad={getType=function(bd)
return da end,setValuesByXMLData=function(bd,cd)ca.setValuesByXMLData(bd,cd)
if
(aa("selectionBG",cd)~=nil)then ab=colors[aa("selectionBG",cd)]end;if(aa("selectionFG",cd)~=nil)then
bb=colors[aa("selectionFG",cd)]end;if(aa("dropdownWidth",cd)~=nil)then
ac=aa("dropdownWidth",cd)end;if(aa("dropdownHeight",cd)~=nil)then
bc=aa("dropdownHeight",cd)end;if(aa("offset",cd)~=nil)then
_c=aa("offset",cd)end
if(cd["item"]~=nil)then local dd=cd["item"]if
(dd.properties~=nil)then dd={dd}end;for __a,a_a in pairs(dd)do
bd:addItem(aa("text",a_a),colors[aa("bg",a_a)],colors[aa("fg",a_a)])end end end,setOffset=function(bd,cd)
_c=cd;bd:updateDraw()return bd end,getOffset=function(bd)return _c end,addItem=function(bd,cd,dd,__a,...)
table.insert(_b,{text=cd,bgCol=
dd or bd.bgColor,fgCol=__a or bd.fgColor,args={...}})bd:updateDraw()return bd end,getAll=function(bd)return
_b end,removeItem=function(bd,cd)table.remove(_b,cd)bd:updateDraw()return bd end,getItem=function(bd,cd)return
_b[cd]end,getItemIndex=function(bd)local cd=bd:getValue()for dd,__a in pairs(_b)do
if(__a==cd)then return dd end end end,clear=function(bd)
_b={}bd:setValue({},false)bd:updateDraw()return bd end,getItemCount=function(bd)return
#_b end,editItem=function(bd,cd,dd,__a,a_a,...)table.remove(_b,cd)
table.insert(_b,cd,{text=dd,bgCol=__a or bd.bgColor,fgCol=
a_a or bd.fgColor,args={...}})bd:updateDraw()return bd end,selectItem=function(bd,cd)bd:setValue(
_b[cd]or{},false)bd:updateDraw()return bd end,setSelectedItem=function(bd,cd,dd,__a)ab=
cd or bd.bgColor;bb=dd or bd.fgColor
cb=__a~=nil and __a;bd:updateDraw()return bd end,setDropdownSize=function(bd,cd,dd)
ac,bc=cd,dd;bd:updateDraw()return bd end,getDropdownSize=function(bd)return ac,bc end,mouseHandler=function(bd,cd,dd,__a)
if
(_d)then
local a_a,b_a=bd:getAbsolutePosition(bd:getAnchorPosition())
if(cd==1)then
if(#_b>0)then
for n=1,bc do
if(_b[n+_c]~=nil)then
if
(a_a<=dd)and(a_a+ac>dd)and(b_a+n==__a)then bd:setValue(_b[n+_c])bd:updateDraw()
local c_a=bd:getEventSystem():sendEvent("mouse_click",bd,"mouse_click",dir,dd,__a)if(c_a==false)then return c_a end;return true end end end end end end
if(ca.mouseHandler(bd,cd,dd,__a))then _d=(not _d)bd:updateDraw()return true else if(_d)then
bd:updateDraw()_d=false end;return false end end,mouseUpHandler=function(bd,cd,dd,__a)
if
(_d)then
local a_a,b_a=bd:getAbsolutePosition(bd:getAnchorPosition())
if(cd==1)then
if(#_b>0)then
for n=1,bc do
if(_b[n+_c]~=nil)then
if
(a_a<=dd)and(a_a+ac>dd)and(b_a+n==__a)then _d=false;bd:updateDraw()
local c_a=bd:getEventSystem():sendEvent("mouse_up",bd,"mouse_up",dir,dd,__a)if(c_a==false)then return c_a end;return true end end end end end end end,scrollHandler=function(bd,cd,dd,__a)
if
(_d)and(bd:isFocused())then _c=_c+cd;if(_c<0)then _c=0 end;if(cd==1)then
if(#_b>bc)then if
(_c>#_b-bc)then _c=#_b-bc end else _c=math.min(#_b-1,0)end end
local a_a=bd:getEventSystem():sendEvent("mouse_scroll",bd,"mouse_scroll",cd,dd,__a)if(a_a==false)then return a_a end;bd:updateDraw()return true end end,draw=function(bd)
if
(ca.draw(bd))then local cd,dd=bd:getAnchorPosition()local __a,a_a=bd:getSize()
if
(bd.parent~=nil)then if(bd.bgColor~=false)then
bd.parent:drawBackgroundBox(cd,dd,__a,a_a,bd.bgColor)end;local b_a=bd:getValue()
local c_a=_a.getTextHorizontalAlign((
b_a~=nil and b_a.text or""),__a,db):sub(1,
__a-1).. (_d and dc or cc)
bd.parent:writeText(cd,dd,c_a,bd.bgColor,bd.fgColor)
if(_d)then
for n=1,bc do
if(_b[n+_c]~=nil)then
if(_b[n+_c]==b_a)then
if(cb)then
bd.parent:writeText(cd,dd+n,_a.getTextHorizontalAlign(_b[n+
_c].text,ac,db),ab,bb)else
bd.parent:writeText(cd,dd+n,_a.getTextHorizontalAlign(_b[n+_c].text,ac,db),_b[n+
_c].bgCol,_b[n+_c].fgCol)end else
bd.parent:writeText(cd,dd+n,_a.getTextHorizontalAlign(_b[n+_c].text,ac,db),_b[n+
_c].bgCol,_b[n+_c].fgCol)end end end end end end end,init=function(bd)
bd.parent:addEvent("mouse_click",bd)bd.parent:addEvent("mouse_up",bd)
bd.parent:addEvent("mouse_scroll",bd)
if(ca.init(bd))then
bd.bgColor=bd.parent:getTheme("DropdownBG")bd.fgColor=bd.parent:getTheme("DropdownText")
ab=bd.parent:getTheme("SelectionBG")bb=bd.parent:getTheme("SelectionText")end end}return setmetatable(ad,ca)end
end; 
project['objects']['Graphic'] = function(...)local _b=require("Object")local ab=require("tHex")
local bb=require("utils").getValueFromXML;local cb=require("bimg")local db=require("images")
local _c,ac,bc,cc=string.sub,string.len,math.max,math.min
return
function(dc)local _d=_b(dc)local ad="Graphic"local bd=cb()local cd=bd.getFrameObject(1)local dd
local __a=1;_d:setZIndex(5)local a_a,b_a=0,0
local c_a={getType=function(d_a)return ad end,setOffset=function(d_a,_aa,aaa,baa)
if(baa)then
a_a=a_a+_aa or 0;b_a=b_a+aaa or 0 else a_a=_aa or a_a;b_a=aaa or b_a end;d_a:updateDraw()return d_a end,getOffset=function(d_a)return
a_a,b_a end,setValuesByXMLData=function(d_a,_aa)_d.setValuesByXMLData(d_a,_aa)return d_a end,selectFrame=function(d_a,_aa)if(
bd.getFrameObject(_aa)==nil)then bd.addFrame(_aa)end
cd=bd.getFrameObject(_aa)dd=cd.getImage(_aa)__a=_aa;d_a:updateDraw()end,addFrame=function(d_a,_aa)
bd.addFrame(_aa)return d_a end,getFrameMetadata=function(d_a,_aa,aaa)return bd.getFrameData(_aa,aaa)end,setFrameMetadata=function(d_a,_aa,aaa,baa)
bd.setFrameData(_aa,aaa,baa)return d_a end,getMetadata=function(d_a,_aa)return bd.getMetadata(_aa)end,setMetadata=function(d_a,_aa,aaa)return
bd.setMetadata(_aa,aaa)end,getFrame=function(d_a,_aa)return bd.getFrame(_aa)end,getFrameObject=function(d_a,_aa)return
bd.getFrameObject(_aa)end,removeFrame=function(d_a,_aa)bd.removeFrame(_aa)return d_a end,moveFrame=function(d_a,_aa,aaa)
bd.moveFrame(_aa,aaa)return d_a end,getFrames=function(d_a)return bd.getFrames()end,getFrameCount=function(d_a)return
#bd.getFrames()end,getSelectedFrame=function(d_a)return __a end,blit=function(d_a,_aa,aaa,baa,caa,daa)
x=caa or x;y=daa or y;cd.blit(_aa,aaa,baa,x,y)dd=cd.getImage()
d_a:updateDraw()return d_a end,setText=function(d_a,_aa,aaa,baa)
x=aaa or x;y=baa or y;cd.text(_aa,x,y)dd=cd.getImage()
d_a:updateDraw()return d_a end,setBg=function(d_a,_aa,aaa,baa)x=aaa or x;y=
baa or y;cd.bg(_aa,x,y)dd=cd.getImage()
d_a:updateDraw()return d_a end,setFg=function(d_a,_aa,aaa,baa)x=aaa or x
y=baa or y;cd.fg(_aa,x,y)dd=cd.getImage()d_a:updateDraw()return d_a end,getImageSize=function(d_a)return
bd.getSize()end,setImageSize=function(d_a,_aa,aaa)bd.setSize(_aa,aaa)
dd=cd.getImage()d_a:updateDraw()return d_a end,resizeImage=function(d_a,_aa,aaa)
local baa=db.resizeBIMG(bd.createBimg(),_aa,aaa)bd=cb(baa)__a=1;cd=bd.getFrameObject(1)dd=cd.getImage()
d_a:updateDraw()return d_a end,loadImage=function(d_a,_aa)
if
(fs.exists(_aa))then local aaa=db.loadBIMG(_aa)bd=cb(aaa)__a=1
cd=bd.getFrameObject(1)dd=cd.getImage()d_a:updateDraw()end;return d_a end,clear=function(d_a)
bd=cb()dd=nil;d_a:updateDraw()return d_a end,getImage=function(d_a)return
bd.createBimg()end,draw=function(d_a)
if(_d.draw(d_a))then
if(d_a.parent~=nil)then
local _aa,aaa=d_a:getAnchorPosition()local baa,caa=d_a:getSize()
if(dd~=nil)then
for daa,_ba in pairs(dd)do if
(daa<=caa-b_a)and(daa+b_a>=1)then
d_a.parent:blit(_aa+a_a,aaa+daa-1 +b_a,_ba[1],_ba[2],_ba[3])end end end end end end,init=function(d_a)
if
(_d.init(d_a))then d_a.bgColor=d_a.parent:getTheme("GraphicBG")end end}return setmetatable(c_a,_d)end
end; 
project['objects']['Image'] = function(...)local aa=require("Object")
local ba=require("utils").getValueFromXML;local ca=require("images")local da,_b=table.unpack,string.sub
return
function(ab)
local bb=aa(ab)local cb="Image"bb:setZIndex(2)local db;local _c;local ac=1;local bc=false;local cc;local dc=false
bb.width=24;bb.height=8
local function _d(bd)
if(db~=nil)then local cd={}
for dd,__a in pairs(colors)do if(type(__a)=="number")then
cd[dd]={term.nativePaletteColor(__a)}end end;if(db.palette~=nil)then
for dd,__a in pairs(db.palette)do cd[dd]=tonumber(__a)end end;if(db[bd]~=nil)and
(db[bd].palette~=nil)then
for dd,__a in pairs(db[bd].palette)do cd[dd]=tonumber(__a)end end;return cd end end
local ad={init=function(bd)
if(bb.init(bd))then bd.bgColor=bd.parent:getTheme("ImageBG")end end,getType=function(bd)return cb end,loadImage=function(bd,cd,dd)
if
not(fs.exists(cd))then error("No valid path: "..cd)end;db=ca.loadImageAsBimg(cd,dd)ac=1;_c=db;if(cc~=nil)then
os.cancelTimer(cc)end;bd:updateDraw()return bd end,setImage=function(bd,cd)
db=cd;_c=db;ac=1;if(cc~=nil)then os.cancelTimer(cc)end
bd:updateDraw()return bd end,usePalette=function(bd,cd)
dc=cd~=nil and cd or true;return bd end,play=function(bd,cd)
if(db.animated)then local dd=
db[ac].duration or db.secondsPerFrame or 0.2
bd.parent:addEvent("other_event",bd)cc=os.startTimer(dd)bc=cd or false end;return bd end,selectFrame=function(bd,cd)if(
db[cd]~=nil)then ac=cd;if(cc~=nil)then os.cancelTimer(cc)end
bd:updateDraw()end end,eventHandler=function(bd,cd,dd,...)
bb.eventHandler(bd,cd,dd,...)
if(cd=="timer")then
if(dd==cc)then
if(db[ac+1]~=nil)then ac=ac+1;local __a=
db[ac].duration or db.secondsPerFrame or 0.2
cc=os.startTimer(__a)else
if(bc)then ac=1
local __a=db[ac].duration or db.secondsPerFrame or 0.2;cc=os.startTimer(__a)end end;bd:updateDraw()end end end,getMetadata=function(bd,cd)return
db[cd]end,getImageSize=function(bd)return db.width,db.height end,resizeImage=function(bd,cd,dd)
_c=ca.resizeBIMG(db,cd,dd)bd:updateDraw()return bd end,setValuesByXMLData=function(bd,cd)
bb.setValuesByXMLData(bd,cd)
if(ba("path",cd)~=nil)then bd:loadImage(ba("path",cd))end;return bd end,draw=function(bd)
if
(bb.draw(bd))then
if(_c~=nil)then if(dc)then
bd:getBaseFrame():setThemeColor(_d(ac))end;local cd,dd=bd:getAnchorPosition()
local __a,a_a=bd:getSize()
for b_a,c_a in ipairs(_c[ac])do local d_a,_aa,aaa=da(c_a)d_a=_b(d_a,1,__a)
_aa=_b(_aa,1,__a)aaa=_b(aaa,1,__a)
bd.parent:blit(cd,dd+b_a-1,d_a,_aa,aaa)if(b_a==a_a)then break end end end end end}return setmetatable(ad,bb)end
end; 
project['objects']['Input'] = function(...)local _a=require("Object")local aa=require("utils")
local ba=require("basaltLogs")local ca=aa.getValueFromXML
return
function(da)local _b=_a(da)local ab="Input"local bb="text"local cb=0
_b:setZIndex(5)_b:setValue("")_b.width=10;_b.height=1;local db=1;local _c=1;local ac=""local bc;local cc
local dc=ac;local _d=false
local ad={getType=function(bd)return ab end,setInputType=function(bd,cd)if(cd=="password")or(cd=="number")or
(cd=="text")then bb=cd end
bd:updateDraw()return bd end,setDefaultText=function(bd,cd,dd,__a)ac=cd
bc=__a or bc;cc=dd or cc;if(bd:isFocused())then dc=""else dc=ac end
bd:updateDraw()return bd end,getInputType=function(bd)return bb end,setValue=function(bd,cd)
_b.setValue(bd,tostring(cd))
if not(_d)then db=tostring(cd):len()+1;_c=math.max(1,db-
bd:getWidth()+1)if(bd:isFocused())then
local dd,__a=bd:getAnchorPosition()
bd.parent:setCursor(true,dd+db-_c,__a+math.floor(bd:getHeight()/2),bd.fgColor)end end;bd:updateDraw()return bd end,getValue=function(bd)
local cd=_b.getValue(bd)return bb=="number"and tonumber(cd)or cd end,setInputLimit=function(bd,cd)cb=
tonumber(cd)or cb;bd:updateDraw()return bd end,getInputLimit=function(bd)return
cb end,setValuesByXMLData=function(bd,cd)_b.setValuesByXMLData(bd,cd)local dd,__a;if(
ca("defaultBG",cd)~=nil)then dd=ca("defaultBG",cd)end;if(
ca("defaultFG",cd)~=nil)then __a=ca("defaultFG",cd)end;if(
ca("default",cd)~=nil)then
bd:setDefaultText(ca("default",cd),__a~=nil and colors[__a],dd~=nil and
colors[dd])end
if
(ca("limit",cd)~=nil)then bd:setInputLimit(ca("limit",cd))end
if(ca("type",cd)~=nil)then bd:setInputType(ca("type",cd))end;return bd end,getFocusHandler=function(bd)
_b.getFocusHandler(bd)
if(bd.parent~=nil)then local cd,dd=bd:getAnchorPosition()dc=""if(ac~="")then
bd:updateDraw()end
bd.parent:setCursor(true,cd+db-_c,dd+math.max(math.ceil(
bd:getHeight()/2 -1,1)),bd.fgColor)end end,loseFocusHandler=function(bd)
_b.loseFocusHandler(bd)if(bd.parent~=nil)then dc=ac;if(ac~="")then bd:updateDraw()end
bd.parent:setCursor(false)end end,keyHandler=function(bd,cd)
if
(_b.keyHandler(bd,cd))then local dd,__a=bd:getSize()_d=true
if(cd==keys.backspace)then
local aaa=tostring(_b.getValue())if(db>1)then
bd:setValue(aaa:sub(1,db-2)..aaa:sub(db,aaa:len()))if(db>1)then db=db-1 end
if(_c>1)then if(db<_c)then _c=_c-1 end end end end;if(cd==keys.enter)then if(bd.parent~=nil)then end end
if(cd==
keys.right)then
local aaa=tostring(_b.getValue()):len()db=db+1;if(db>aaa)then db=aaa+1 end;if(db<1)then db=1 end;if
(db<_c)or(db>=dd+_c)then _c=db-dd+1 end;if(_c<1)then _c=1 end end
if(cd==keys.left)then db=db-1;if(db>=1)then
if(db<_c)or(db>=dd+_c)then _c=db end end;if(db<1)then db=1 end;if(_c<1)then _c=1 end end;local a_a,b_a=bd:getAnchorPosition()
local c_a=tostring(_b.getValue())
local d_a=(db<=c_a:len()and db-1 or c_a:len())- (_c-1)local _aa=bd:getX()if(d_a>_aa+dd-1)then d_a=_aa+dd-1 end;if(
bd.parent~=nil)then
bd.parent:setCursor(true,a_a+d_a,b_a+
math.max(math.ceil(__a/2 -1,1)),bd.fgColor)end
bd:updateDraw()_d=false;return true end;return false end,charHandler=function(bd,cd)
if
(_b.charHandler(bd,cd))then _d=true;local dd,__a=bd:getSize()local a_a=_b.getValue()
if(a_a:len()<cb or
cb<=0)then
if(bb=="number")then local baa=a_a
if(db==1 and cd=="-")or(cd==".")or(
tonumber(cd)~=nil)then
bd:setValue(a_a:sub(1,db-1)..cd..
a_a:sub(db,a_a:len()))db=db+1;if(cd==".")or(cd=="-")and(#a_a>0)then
if(
tonumber(_b.getValue())==nil)then bd:setValue(baa)db=db-1 end end end else
bd:setValue(a_a:sub(1,db-1)..cd..a_a:sub(db,a_a:len()))db=db+1 end;if(db>=dd+_c)then _c=_c+1 end end;local b_a,c_a=bd:getAnchorPosition()
local d_a=tostring(_b.getValue())
local _aa=(db<=d_a:len()and db-1 or d_a:len())- (_c-1)local aaa=bd:getX()if(_aa>aaa+dd-1)then _aa=aaa+dd-1 end;if(
bd.parent~=nil)then
bd.parent:setCursor(true,b_a+_aa,c_a+
math.max(math.ceil(__a/2 -1,1)),bd.fgColor)end;_d=false
bd:updateDraw()return true end;return false end,mouseHandler=function(bd,cd,dd,__a)
if
(_b.mouseHandler(bd,cd,dd,__a))then local a_a,b_a=bd:getAnchorPosition()
local c_a,d_a=bd:getAbsolutePosition(a_a,b_a)local _aa,aaa=bd:getSize()db=dd-c_a+_c;local baa=_b.getValue()if(db>
baa:len())then db=baa:len()+1 end;if(db<_c)then _c=db-1
if(_c<1)then _c=1 end end
bd.parent:setCursor(true,a_a+db-_c,b_a+
math.max(math.ceil(aaa/2 -1,1)),bd.fgColor)return true end end,dragHandler=function(bd,cd,dd,__a,a_a,b_a)
if
(bd:isFocused())then if(bd:isCoordsInObject(dd,__a))then
if(_b.dragHandler(bd,cd,dd,__a,a_a,b_a))then return true end end
bd.parent:removeFocusedObject()end end,eventHandler=function(bd,cd,dd,...)
_b.eventHandler(bd,cd,dd,...)
if(cd=="paste")then
if(bd:isFocused())then local __a=_b.getValue()
local a_a,b_a=bd:getSize()_d=true
if(bb=="number")then local caa=__a
if(dd==".")or(tonumber(dd)~=nil)then
bd:setValue(__a:sub(1,
db-1)..dd..__a:sub(db,__a:len()))db=db+dd:len()end
if(tonumber(_b.getValue())==nil)then bd:setValue(caa)end else
bd:setValue(__a:sub(1,db-1)..dd..__a:sub(db,__a:len()))db=db+dd:len()end;if(db>=a_a+_c)then _c=(db+1)-a_a end
local c_a,d_a=bd:getAnchorPosition()local _aa=tostring(_b.getValue())
local aaa=(
db<=_aa:len()and db-1 or _aa:len())- (_c-1)local baa=bd:getX()
if(aaa>baa+a_a-1)then aaa=baa+a_a-1 end;if(bd.parent~=nil)then
bd.parent:setCursor(true,c_a+aaa,d_a+
math.max(math.ceil(b_a/2 -1,1)),bd.fgColor)end
bd:updateDraw()_d=false end end end,draw=function(bd)
if
(_b.draw(bd))then
if(bd.parent~=nil)then local cd,dd=bd:getAnchorPosition()
local __a,a_a=bd:getSize()local b_a=aa.getTextVerticalAlign(a_a,"center")if
(bd.bgColor~=false)then
bd.parent:drawBackgroundBox(cd,dd,__a,a_a,bd.bgColor)end
for n=1,a_a do
if(n==b_a)then
local c_a=tostring(_b.getValue())local d_a=bd.bgColor;local _aa=bd.fgColor;local aaa;if(c_a:len()<=0)then aaa=dc;d_a=bc or d_a;_aa=
cc or _aa end;aaa=dc
if(c_a~="")then aaa=c_a end;aaa=aaa:sub(_c,__a+_c-1)local baa=__a-aaa:len()if(baa<0)then
baa=0 end;if(bb=="password")and(c_a~="")then
aaa=string.rep("*",aaa:len())end
aaa=aaa..string.rep(bd.bgSymbol,baa)bd.parent:writeText(cd,dd+ (n-1),aaa,d_a,_aa)end end;if(bd:isFocused())then
bd.parent:setCursor(true,cd+db-_c,dd+
math.floor(bd:getHeight()/2),bd.fgColor)end end end end,init=function(bd)
if(
bd.parent~=nil)then bd.parent:addEvent("mouse_click",bd)
bd.parent:addEvent("key",bd)bd.parent:addEvent("char",bd)
bd.parent:addEvent("other_event",bd)bd.parent:addEvent("mouse_drag",bd)end;if(_b.init(bd))then bd.bgColor=bd.parent:getTheme("InputBG")
bd.fgColor=bd.parent:getTheme("InputText")end end}return setmetatable(ad,_b)end
end; 
project['objects']['Label'] = function(...)local ba=require("Object")local ca=require("utils")
local da=ca.getValueFromXML;local _b=ca.createText;local ab=require("tHex")local bb=require("bigfont")
return
function(cb)
local db=ba(cb)local _c="Label"db:setZIndex(3)local ac=true;db:setValue("Label")
db.width=5;local bc="left"local cc="top"local dc=0;local _d,ad=false,false
local bd={getType=function(cd)return _c end,setText=function(cd,dd)
dd=tostring(dd)db:setValue(dd)
if(ac)then local __a=cd.parent:getOffset()
if(dd:len()+
cd:getX()>cd.parent:getWidth()+__a)then local a_a=
cd.parent:getWidth()+__a-cd:getX()db.setSize(cd,a_a,#
_b(dd,a_a))else
db.setSize(cd,dd:len(),1)end end;cd:updateDraw()return cd end,setBackground=function(cd,dd)
db.setBackground(cd,dd)ad=true;cd:updateDraw()return cd end,setForeground=function(cd,dd)
db.setForeground(cd,dd)_d=true;cd:updateDraw()return cd end,setTextAlign=function(cd,dd,__a)
bc=dd or bc;cc=__a or cc;cd:updateDraw()return cd end,setFontSize=function(cd,dd)if(
dd>0)and(dd<=4)then dc=dd-1 or 0 end
cd:updateDraw()return cd end,getFontSize=function(cd)return dc+1 end,setValuesByXMLData=function(cd,dd)
db.setValuesByXMLData(cd,dd)
if(da("text",dd)~=nil)then cd:setText(da("text",dd))end
if(da("verticalAlign",dd)~=nil)then cc=da("verticalAlign",dd)end;if(da("horizontalAlign",dd)~=nil)then
bc=da("horizontalAlign",dd)end;if(da("font",dd)~=nil)then
cd:setFontSize(da("font",dd))end;return cd end,setSize=function(cd,dd,__a,a_a)
db.setSize(cd,dd,__a,a_a)ac=false;cd:updateDraw()return cd end,eventHandler=function(cd,dd)
if(
dd=="basalt_resize")then
if(ac)then local __a=cd:getValue()
if(__a:len()+cd:getX()>
cd.parent:getWidth())then
local a_a=cd.parent:getWidth()-cd:getX()db.setSize(cd,a_a,#_b(__a,a_a))else
db.setSize(cd,__a:len(),1)end else end end end,draw=function(cd)
if
(db.draw(cd))then
if(cd.parent~=nil)then local dd,__a=cd:getAnchorPosition()
local a_a,b_a=cd:getSize()local c_a=ca.getTextVerticalAlign(b_a,cc)
if(dc==0)then
if not(ac)then
local d_a=_b(cd:getValue(),cd:getWidth())
for _aa,aaa in pairs(d_a)do if(_aa<=b_a)then
cd.parent:writeText(dd,__a+_aa-1,aaa,cd.bgColor,cd.fgColor)end end else
if(#cd:getValue()+dd>cd.parent:getWidth())then
local d_a=_b(cd:getValue(),cd:getWidth())
for _aa,aaa in pairs(d_a)do if(_aa<=b_a)then
cd.parent:writeText(dd,__a+_aa-1,aaa,cd.bgColor,cd.fgColor)end end else
cd.parent:writeText(dd,__a,cd:getValue(),cd.bgColor,cd.fgColor)end end else
local d_a=bb(dc,cd:getValue(),cd.fgColor,cd.bgColor or colors.lightGray)
if(ac)then cd:setSize(#d_a[1][1],#d_a[1]-1)end;local _aa,aaa=cd.parent:getSize()
local baa,caa=#d_a[1][1],#d_a[1]
dd=dd or math.floor((_aa-baa)/2)+1
__a=__a or math.floor((aaa-caa)/2)+1
for i=1,caa do cd.parent:setFG(dd,__a+i-1,d_a[2][i])cd.parent:setBG(dd,
__a+i-1,d_a[3][i])cd.parent:setText(dd,
__a+i-1,d_a[1][i])end end end end end,init=function(cd)
cd.parent:addEvent("other_event",cd)
if(db.init(cd))then cd.bgColor=cd.parent:getTheme("LabelBG")
cd.fgColor=cd.parent:getTheme("LabelText")
if
(cd.parent.bgColor==colors.black)and(cd.fgColor==colors.black)then cd.fgColor=colors.lightGray end end end}return setmetatable(bd,db)end
end; 
project['objects']['List'] = function(...)local d=require("Object")local _a=require("utils")
local aa=_a.getValueFromXML
return
function(ba)local ca=d(ba)local da="List"ca.width=16;ca.height=6;ca:setZIndex(5)local _b={}
local ab;local bb;local cb=true;local db="left"local _c=0;local ac=true
local bc={getType=function(cc)return da end,addItem=function(cc,dc,_d,ad,...)
table.insert(_b,{text=dc,bgCol=_d or cc.bgColor,fgCol=
ad or cc.fgColor,args={...}})if(#_b<=1)then cc:setValue(_b[1],false)end
cc:updateDraw()return cc end,setOffset=function(cc,dc)
_c=dc;cc:updateDraw()return cc end,getOffset=function(cc)return _c end,removeItem=function(cc,dc)
table.remove(_b,dc)cc:updateDraw()return cc end,getItem=function(cc,dc)return _b[dc]end,getAll=function(cc)return
_b end,getItemIndex=function(cc)local dc=cc:getValue()
for _d,ad in pairs(_b)do if(ad==dc)then return _d end end end,clear=function(cc)_b={}
cc:setValue({},false)cc:updateDraw()return cc end,getItemCount=function(cc)return#_b end,editItem=function(cc,dc,_d,ad,bd,...)
table.remove(_b,dc)
table.insert(_b,dc,{text=_d,bgCol=ad or cc.bgColor,fgCol=bd or cc.fgColor,args={...}})cc:updateDraw()return cc end,selectItem=function(cc,dc)cc:setValue(
_b[dc]or{},false)cc:updateDraw()return cc end,setSelectedItem=function(cc,dc,_d,ad)ab=
dc or cc.bgColor;bb=_d or cc.fgColor
cb=ad~=nil and ad or true;cc:updateDraw()return cc end,setScrollable=function(cc,dc)
ac=dc;if(dc==nil)then ac=true end;cc:updateDraw()return cc end,setValuesByXMLData=function(cc,dc)
ca.setValuesByXMLData(cc,dc)if(aa("selectionBG",dc)~=nil)then
ab=colors[aa("selectionBG",dc)]end;if(aa("selectionFG",dc)~=nil)then
bb=colors[aa("selectionFG",dc)]end;if(aa("scrollable",dc)~=nil)then
if
(aa("scrollable",dc))then cc:setScrollable(true)else cc:setScrollable(false)end end;if
(aa("offset",dc)~=nil)then _c=aa("offset",dc)end
if(dc["item"]~=nil)then
local _d=dc["item"]if(_d.properties~=nil)then _d={_d}end;for ad,bd in pairs(_d)do
cc:addItem(aa("text",bd),colors[aa("bg",bd)],colors[aa("fg",bd)])end end;return cc end,scrollHandler=function(cc,dc,_d,ad)
if
(ca.scrollHandler(cc,dc,_d,ad))then
if(ac)then local bd,cd=cc:getSize()_c=_c+dc;if(_c<0)then _c=0 end;if(dc>=1)then
if(#_b>cd)then if
(_c>#_b-cd)then _c=#_b-cd end;if(_c>=#_b)then _c=#_b-1 end else _c=_c-1 end end
cc:updateDraw()end;return true end;return false end,mouseHandler=function(cc,dc,_d,ad)
if
(ca.mouseHandler(cc,dc,_d,ad))then
local bd,cd=cc:getAbsolutePosition(cc:getAnchorPosition())local dd,__a=cc:getSize()
if(#_b>0)then for n=1,__a do
if(_b[n+_c]~=nil)then if
(bd<=_d)and(bd+dd>_d)and(cd+n-1 ==ad)then cc:setValue(_b[n+_c])
cc:updateDraw()end end end end;return true end;return false end,dragHandler=function(cc,dc,_d,ad)return
cc:mouseHandler(dc,_d,ad)end,touchHandler=function(cc,dc,_d)
return cc:mouseHandler(1,dc,_d)end,draw=function(cc)
if(ca.draw(cc))then
if(cc.parent~=nil)then
local dc,_d=cc:getAnchorPosition()local ad,bd=cc:getSize()if(cc.bgColor~=false)then
cc.parent:drawBackgroundBox(dc,_d,ad,bd,cc.bgColor)end
for n=1,bd do
if(_b[n+_c]~=nil)then
if(_b[n+_c]==
cc:getValue())then
if(cb)then
cc.parent:writeText(dc,_d+n-1,_a.getTextHorizontalAlign(_b[n+_c].text,ad,db),ab,bb)else
cc.parent:writeText(dc,_d+n-1,_a.getTextHorizontalAlign(_b[n+_c].text,ad,db),_b[
n+_c].bgCol,_b[n+_c].fgCol)end else
cc.parent:writeText(dc,_d+n-1,_a.getTextHorizontalAlign(_b[n+_c].text,ad,db),_b[
n+_c].bgCol,_b[n+_c].fgCol)end end end end end end,init=function(cc)
cc.parent:addEvent("mouse_click",cc)cc.parent:addEvent("mouse_drag",cc)
cc.parent:addEvent("mouse_scroll",cc)
if(ca.init(cc))then cc.bgColor=cc.parent:getTheme("ListBG")
cc.fgColor=cc.parent:getTheme("ListText")ab=cc.parent:getTheme("SelectionBG")
bb=cc.parent:getTheme("SelectionText")end end}return setmetatable(bc,ca)end
end; 
project['objects']['Menubar'] = function(...)local _a=require("Object")local aa=require("utils")
local ba=aa.getValueFromXML;local ca=require("tHex")
return
function(da)local _b=_a(da)local ab="Menubar"local bb={}_b.width=30
_b.height=1;_b:setZIndex(5)local cb={}local db;local _c;local ac=true;local bc="left"local cc=0;local dc=1
local _d=false
local function ad()local bd=0;local cd=0;local dd=bb:getWidth()
for n=1,#cb do if(cd+cb[n].text:len()+
dc*2 >dd)then
if(cd<dd)then bd=bd+ (cb[n].text:len()+dc*2 - (
dd-cd))else bd=bd+
cb[n].text:len()+dc*2 end end;cd=cd+
cb[n].text:len()+dc*2 end;return bd end
bb={getType=function(bd)return ab end,addItem=function(bd,cd,dd,__a,...)
table.insert(cb,{text=tostring(cd),bgCol=dd or bd.bgColor,fgCol=__a or bd.fgColor,args={...}})if(#cb==1)then bd:setValue(cb[1])end
bd:updateDraw()return bd end,getAll=function(bd)return
cb end,getItemIndex=function(bd)local cd=bd:getValue()for dd,__a in pairs(cb)do
if(__a==cd)then return dd end end end,clear=function(bd)
cb={}bd:setValue({},false)bd:updateDraw()return bd end,setSpace=function(bd,cd)dc=
cd or dc;bd:updateDraw()return bd end,setOffset=function(bd,cd)
cc=cd or 0;if(cc<0)then cc=0 end;local dd=ad()if(cc>dd)then cc=dd end;bd:updateDraw()
return bd end,getOffset=function(bd)return cc end,setScrollable=function(bd,cd)
_d=cd;if(cd==nil)then _d=true end;return bd end,setValuesByXMLData=function(bd,cd)
_b.setValuesByXMLData(bd,cd)if(ba("selectionBG",cd)~=nil)then
db=colors[ba("selectionBG",cd)]end;if(ba("selectionFG",cd)~=nil)then
_c=colors[ba("selectionFG",cd)]end;if(ba("scrollable",cd)~=nil)then
if
(ba("scrollable",cd))then bd:setScrollable(true)else bd:setScrollable(false)end end
if
(ba("offset",cd)~=nil)then bd:setOffset(ba("offset",cd))end;if(ba("space",cd)~=nil)then dc=ba("space",cd)end
if(
cd["item"]~=nil)then local dd=cd["item"]if(dd.properties~=nil)then dd={dd}end;for __a,a_a in
pairs(dd)do
bd:addItem(ba("text",a_a),colors[ba("bg",a_a)],colors[ba("fg",a_a)])end end;return bd end,removeItem=function(bd,cd)
table.remove(cb,cd)bd:updateDraw()return bd end,getItem=function(bd,cd)return cb[cd]end,getItemCount=function(bd)return
#cb end,editItem=function(bd,cd,dd,__a,a_a,...)table.remove(cb,cd)
table.insert(cb,cd,{text=dd,bgCol=__a or bd.bgColor,fgCol=
a_a or bd.fgColor,args={...}})bd:updateDraw()return bd end,selectItem=function(bd,cd)bd:setValue(
cb[cd]or{},false)bd:updateDraw()return bd end,setSelectedItem=function(bd,cd,dd,__a)db=
cd or bd.bgColor;_c=dd or bd.fgColor;ac=__a
bd:updateDraw()return bd end,mouseHandler=function(bd,cd,dd,__a)
if
(_b.mouseHandler(bd,cd,dd,__a))then
local a_a,b_a=bd:getAbsolutePosition(bd:getAnchorPosition())local c_a,d_a=bd:getSize()local _aa=0
for n=1,#cb do
if(cb[n]~=nil)then
if
(a_a+_aa<=dd+cc)and(a_a+_aa+
cb[n].text:len()+ (dc*2)>dd+cc)and(b_a==__a)then bd:setValue(cb[n])
bd:getEventSystem():sendEvent(event,bd,event,0,dd,__a,cb[n])end;_aa=_aa+cb[n].text:len()+dc*2 end end;bd:updateDraw()return true end;return false end,scrollHandler=function(bd,cd,dd,__a)
if
(_b.scrollHandler(bd,cd,dd,__a))then if(_d)then cc=cc+cd;if(cc<0)then cc=0 end;local a_a=ad()if(cc>a_a)then cc=a_a end
bd:updateDraw()end;return true end;return false end,draw=function(bd)
if
(_b.draw(bd))then
if(bd.parent~=nil)then local cd,dd=bd:getAnchorPosition()
local __a,a_a=bd:getSize()if(bd.bgColor~=false)then
bd.parent:drawBackgroundBox(cd,dd,__a,a_a,bd.bgColor)end;local b_a=""local c_a=""local d_a=""
for _aa,aaa in pairs(cb)do
local baa=
(" "):rep(dc)..aaa.text.. (" "):rep(dc)b_a=b_a..baa
if(aaa==bd:getValue())then c_a=c_a..
ca[db or aaa.bgCol or bd.bgColor]:rep(baa:len())d_a=d_a..
ca[_c or aaa.FgCol or
bd.fgColor]:rep(baa:len())else c_a=c_a..
ca[aaa.bgCol or bd.bgColor]:rep(baa:len())d_a=d_a..
ca[aaa.FgCol or bd.fgColor]:rep(baa:len())end end
bd.parent:setText(cd,dd,b_a:sub(cc+1,__a+cc))
bd.parent:setBG(cd,dd,c_a:sub(cc+1,__a+cc))
bd.parent:setFG(cd,dd,d_a:sub(cc+1,__a+cc))end end end,init=function(bd)
bd.parent:addEvent("mouse_click",bd)bd.parent:addEvent("mouse_scroll",bd)
if(_b.init(bd))then
bd.bgColor=bd.parent:getTheme("MenubarBG")bd.fgColor=bd.parent:getTheme("MenubarText")
db=bd.parent:getTheme("SelectionBG")_c=bd.parent:getTheme("SelectionText")end end}return setmetatable(bb,_b)end
end; 
project['objects']['Pane'] = function(...)local c=require("Object")local d=require("basaltLogs")
return
function(_a)local aa=c(_a)
local ba="Pane"
local ca={getType=function(da)return ba end,setBackground=function(da,_b,ab,bb)aa.setBackground(da,_b,ab,bb)return da end,init=function(da)if
(aa.init(da))then da.bgColor=da.parent:getTheme("PaneBG")
da.fgColor=da.parent:getTheme("PaneBG")end end}return setmetatable(ca,aa)end
end; 
project['objects']['Program'] = function(...)local aa=require("Object")local ba=require("tHex")
local ca=require("process")local da=require("utils").getValueFromXML;local _b=string.sub
return
function(ab,bb)
local cb=aa(ab)local db="Program"cb:setZIndex(5)local _c;local ac;local bc={}
local function cc(b_a,c_a,d_a,_aa,aaa)local baa,caa=1,1
local daa,_ba=colors.black,colors.white;local aba=false;local bba=false;local cba={}local dba={}local _ca={}local aca={}local bca;local cca={}for i=0,15 do local aab=2 ^i
aca[aab]={bb:getBasaltInstance().getBaseTerm().getPaletteColour(aab)}end;local function dca()
bca=(" "):rep(d_a)
for n=0,15 do local aab=2 ^n;local bab=ba[aab]cca[aab]=bab:rep(d_a)end end
local function _da()dca()local aab=bca
local bab=cca[colors.white]local cab=cca[colors.black]
for n=1,_aa do
cba[n]=_b(cba[n]==nil and aab or cba[n]..aab:sub(1,
d_a-cba[n]:len()),1,d_a)
_ca[n]=_b(_ca[n]==nil and bab or _ca[n]..
bab:sub(1,d_a-_ca[n]:len()),1,d_a)
dba[n]=_b(dba[n]==nil and cab or dba[n]..
cab:sub(1,d_a-dba[n]:len()),1,d_a)end;cb.updateDraw(cb)end;_da()local function ada()if
baa>=1 and caa>=1 and baa<=d_a and caa<=_aa then else end end
local function bda(aab,bab,cab)
local dab=baa;local _bb=dab+#aab-1
if caa>=1 and caa<=_aa then
if dab<=d_a and _bb>=1 then
if dab==1 and _bb==
d_a then cba[caa]=aab;_ca[caa]=bab;dba[caa]=cab else local abb,bbb,cbb
if dab<1 then local _db=
1 -dab+1;local adb=d_a-dab+1;abb=_b(aab,_db,adb)
bbb=_b(bab,_db,adb)cbb=_b(cab,_db,adb)elseif _bb>d_a then local _db=d_a-dab+1;abb=_b(aab,1,_db)
bbb=_b(bab,1,_db)cbb=_b(cab,1,_db)else abb=aab;bbb=bab;cbb=cab end;local dbb=cba[caa]local _cb=_ca[caa]local acb=dba[caa]local bcb,ccb,dcb
if dab>1 then local _db=dab-1;bcb=
_b(dbb,1,_db)..abb;ccb=_b(_cb,1,_db)..bbb
dcb=_b(acb,1,_db)..cbb else bcb=abb;ccb=bbb;dcb=cbb end
if _bb<d_a then local _db=_bb+1;bcb=bcb.._b(dbb,_db,d_a)
ccb=ccb.._b(_cb,_db,d_a)dcb=dcb.._b(acb,_db,d_a)end;cba[caa]=bcb;_ca[caa]=ccb;dba[caa]=dcb end;_c:updateDraw()end;baa=_bb+1;if(bba)then ada()end end end
local function cda(aab,bab,cab)
if(cab~=nil)then local dab=cba[bab]if(dab~=nil)then
cba[bab]=_b(dab:sub(1,aab-1)..cab..dab:sub(aab+
(cab:len()),d_a),1,d_a)end end;_c:updateDraw()end
local function dda(aab,bab,cab)
if(cab~=nil)then local dab=dba[bab]if(dab~=nil)then
dba[bab]=_b(dab:sub(1,aab-1)..cab..dab:sub(aab+
(cab:len()),d_a),1,d_a)end end;_c:updateDraw()end
local function __b(aab,bab,cab)
if(cab~=nil)then local dab=_ca[bab]if(dab~=nil)then
_ca[bab]=_b(dab:sub(1,aab-1)..cab..dab:sub(aab+
(cab:len()),d_a),1,d_a)end end;_c:updateDraw()end
local a_b=function(aab)
if type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)elseif ba[aab]==nil then
error("Invalid color (got "..aab..")",2)end;_ba=aab end
local b_b=function(aab)
if type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)elseif ba[aab]==nil then
error("Invalid color (got "..aab..")",2)end;daa=aab end
local c_b=function(aab,bab,cab,dab)if type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)end
if ba[aab]==nil then error("Invalid color (got "..
aab..")",2)end;local _bb
if
type(bab)=="number"and cab==nil and dab==nil then _bb={colours.rgb8(bab)}aca[aab]=_bb else if
type(bab)~="number"then
error("bad argument #2 (expected number, got "..type(bab)..")",2)end;if type(cab)~="number"then
error(
"bad argument #3 (expected number, got "..type(cab)..")",2)end;if type(dab)~="number"then
error(
"bad argument #4 (expected number, got "..type(dab)..")",2)end;_bb=aca[aab]_bb[1]=bab
_bb[2]=cab;_bb[3]=dab end end
local d_b=function(aab)if type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)end
if ba[aab]==nil then error("Invalid color (got "..
aab..")",2)end;local bab=aca[aab]return bab[1],bab[2],bab[3]end
local _ab={setCursorPos=function(aab,bab)if type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)end;if type(bab)~="number"then
error(
"bad argument #2 (expected number, got "..type(bab)..")",2)end;baa=math.floor(aab)
caa=math.floor(bab)if(bba)then ada()end end,getCursorPos=function()return
baa,caa end,setCursorBlink=function(aab)if type(aab)~="boolean"then
error("bad argument #1 (expected boolean, got "..
type(aab)..")",2)end;aba=aab end,getCursorBlink=function()return
aba end,getPaletteColor=d_b,getPaletteColour=d_b,setBackgroundColor=b_b,setBackgroundColour=b_b,setTextColor=a_b,setTextColour=a_b,setPaletteColor=c_b,setPaletteColour=c_b,getBackgroundColor=function()return daa end,getBackgroundColour=function()return daa end,getSize=function()
return d_a,_aa end,getTextColor=function()return _ba end,getTextColour=function()return _ba end,basalt_resize=function(aab,bab)d_a,_aa=aab,bab;_da()end,basalt_reposition=function(aab,bab)
b_a,c_a=aab,bab end,basalt_setVisible=function(aab)bba=aab end,drawBackgroundBox=function(aab,bab,cab,dab,_bb)for n=1,dab do
dda(aab,bab+ (n-1),ba[_bb]:rep(cab))end end,drawForegroundBox=function(aab,bab,cab,dab,_bb)
for n=1,dab do __b(aab,
bab+ (n-1),ba[_bb]:rep(cab))end end,drawTextBox=function(aab,bab,cab,dab,_bb)for n=1,dab do
cda(aab,bab+ (n-1),_bb:rep(cab))end end,writeText=function(aab,bab,cab,dab,_bb)
dab=dab or daa;_bb=_bb or _ba;cda(b_a,bab,cab)
dda(aab,bab,ba[dab]:rep(cab:len()))__b(aab,bab,ba[_bb]:rep(cab:len()))end,basalt_update=function()
if(
bb~=nil)then for n=1,_aa do bb:setText(b_a,c_a+ (n-1),cba[n])bb:setBG(b_a,c_a+
(n-1),dba[n])
bb:setFG(b_a,c_a+ (n-1),_ca[n])end end end,scroll=function(aab)if
type(aab)~="number"then
error("bad argument #1 (expected number, got "..type(aab)..")",2)end
if aab~=0 then local bab=bca
local cab=cca[_ba]local dab=cca[daa]
for newY=1,_aa do local _bb=newY+aab
if _bb>=1 and _bb<=_aa then
cba[newY]=cba[_bb]dba[newY]=dba[_bb]_ca[newY]=_ca[_bb]else cba[newY]=bab
_ca[newY]=cab;dba[newY]=dab end end end;if(bba)then ada()end end,isColor=function()return
bb:getBasaltInstance().getBaseTerm().isColor()end,isColour=function()return
bb:getBasaltInstance().getBaseTerm().isColor()end,write=function(aab)
aab=tostring(aab)if(bba)then
bda(aab,ba[_ba]:rep(aab:len()),ba[daa]:rep(aab:len()))end end,clearLine=function()
if
(bba)then cda(1,caa,(" "):rep(d_a))
dda(1,caa,ba[daa]:rep(d_a))__b(1,caa,ba[_ba]:rep(d_a))end;if(bba)then ada()end end,clear=function()
for n=1,_aa
do cda(1,n,(" "):rep(d_a))
dda(1,n,ba[daa]:rep(d_a))__b(1,n,ba[_ba]:rep(d_a))end;if(bba)then ada()end end,blit=function(aab,bab,cab)if
type(aab)~="string"then
error("bad argument #1 (expected string, got "..type(aab)..")",2)end;if type(bab)~="string"then
error(
"bad argument #2 (expected string, got "..type(bab)..")",2)end;if type(cab)~="string"then
error(
"bad argument #3 (expected string, got "..type(cab)..")",2)end
if
#bab~=#aab or#cab~=#aab then error("Arguments must be the same length",2)end;if(bba)then bda(aab,bab,cab)end end}return _ab end;cb.width=30;cb.height=12;local dc=cc(1,1,cb.width,cb.height)local _d
local ad=false;local bd={}
local function cd(b_a)local c_a,d_a=dc.getCursorPos()
local _aa,aaa=b_a:getAnchorPosition()local baa,caa=b_a:getSize()
if(_aa+c_a-1 >=1 and
_aa+c_a-1 <=_aa+baa-1 and d_a+aaa-1 >=1 and
d_a+aaa-1 <=aaa+caa-1)then
b_a.parent:setCursor(
b_a:isFocused()and dc.getCursorBlink(),_aa+c_a-1,d_a+aaa-1,dc.getTextColor())end end
local function dd(b_a,c_a,...)local d_a,_aa=_d:resume(c_a,...)
if(d_a==false)and(_aa~=nil)and
(_aa~="Terminated")then
local aaa=b_a:sendEvent("program_error",_aa)
if(aaa~=false)then error("Basalt Program - ".._aa)end end
if(_d:getStatus()=="dead")then b_a:sendEvent("program_done")end end
local function __a(b_a,c_a,d_a,_aa,aaa)if(_d==nil)then return false end
if not(_d:isDead())then
if not(ad)then
local baa,caa=b_a:getAbsolutePosition(b_a:getAnchorPosition(
nil,nil,true))dd(b_a,c_a,d_a,_aa-baa+1,aaa-caa+1)cd(b_a)end end end
local function a_a(b_a,c_a,d_a,_aa)if(_d==nil)then return false end
if not(_d:isDead())then if not(ad)then if(b_a.draw)then
dd(b_a,c_a,d_a,_aa)cd(b_a)end end end end
_c={getType=function(b_a)return db end,show=function(b_a)cb.show(b_a)
dc.setBackgroundColor(b_a.bgColor)dc.setTextColor(b_a.fgColor)
dc.basalt_setVisible(true)return b_a end,hide=function(b_a)
cb.hide(b_a)dc.basalt_setVisible(false)return b_a end,setPosition=function(b_a,c_a,d_a,_aa)
cb.setPosition(b_a,c_a,d_a,_aa)
dc.basalt_reposition(b_a:getAnchorPosition())return b_a end,setValuesByXMLData=function(b_a,c_a)
cb.setValuesByXMLData(b_a,c_a)if(da("path",c_a)~=nil)then ac=da("path",c_a)end
if(
da("execute",c_a)~=nil)then if(da("execute",c_a))then
if(ac~=nil)then b_a:execute(ac)end end end end,getBasaltWindow=function()return
dc end,getBasaltProcess=function()return _d end,setSize=function(b_a,c_a,d_a,_aa)cb.setSize(b_a,c_a,d_a,_aa)
dc.basalt_resize(b_a:getWidth(),b_a:getHeight())return b_a end,getStatus=function(b_a)if(_d~=nil)then return
_d:getStatus()end;return"inactive"end,setEnviroment=function(b_a,c_a)bc=
c_a or{}return b_a end,execute=function(b_a,c_a,...)ac=c_a or ac
_d=ca:new(ac,dc,bc,...)dc.setBackgroundColor(colors.black)
dc.setTextColor(colors.white)dc.clear()dc.setCursorPos(1,1)
dc.setBackgroundColor(b_a.bgColor)dc.setTextColor(b_a.fgColor)
dc.basalt_setVisible(true)dd(b_a)ad=false
if(b_a.parent~=nil)then
b_a.parent:addEvent("mouse_click",b_a)b_a.parent:addEvent("mouse_up",b_a)
b_a.parent:addEvent("mouse_drag",b_a)b_a.parent:addEvent("mouse_scroll",b_a)
b_a.parent:addEvent("key",b_a)b_a.parent:addEvent("key_up",b_a)
b_a.parent:addEvent("char",b_a)b_a.parent:addEvent("other_event",b_a)end;return b_a end,stop=function(b_a)
if(
_d~=nil)then if not(_d:isDead())then dd(b_a,"terminate")
if(_d:isDead())then if
(b_a.parent~=nil)then b_a.parent:setCursor(false)end end end end;b_a.parent:removeEvents(b_a)return b_a end,pause=function(b_a,c_a)ad=
c_a or(not ad)
if(_d~=nil)then if not(_d:isDead())then if not(ad)then
b_a:injectEvents(bd)bd={}end end end;return b_a end,isPaused=function(b_a)return
ad end,injectEvent=function(b_a,c_a,d_a,_aa,aaa,baa,caa)
if(_d~=nil)then
if not(_d:isDead())then if(ad==false)or(caa)then
dd(b_a,c_a,d_a,_aa,aaa,baa)else
table.insert(bd,{event=c_a,args={d_a,_aa,aaa,baa}})end end end;return b_a end,getQueuedEvents=function(b_a)return
bd end,updateQueuedEvents=function(b_a,c_a)bd=c_a or bd;return b_a end,injectEvents=function(b_a,c_a)if(_d~=nil)then
if not
(_d:isDead())then for d_a,_aa in pairs(c_a)do
dd(b_a,_aa.event,table.unpack(_aa.args))end end end;return b_a end,mouseHandler=function(b_a,c_a,d_a,_aa)
if
(cb.mouseHandler(b_a,c_a,d_a,_aa))then __a(b_a,"mouse_click",c_a,d_a,_aa)return true end;return false end,mouseUpHandler=function(b_a,c_a,d_a,_aa)
if
(cb.mouseUpHandler(b_a,c_a,d_a,_aa))then __a(b_a,"mouse_up",c_a,d_a,_aa)return true end;return false end,scrollHandler=function(b_a,c_a,d_a,_aa)
if
(cb.scrollHandler(b_a,c_a,d_a,_aa))then __a(b_a,"mouse_scroll",c_a,d_a,_aa)return true end;return false end,dragHandler=function(b_a,c_a,d_a,_aa)
if
(cb.dragHandler(b_a,c_a,d_a,_aa))then __a(b_a,"mouse_drag",c_a,d_a,_aa)return true end;return false end,keyHandler=function(b_a,c_a,d_a)if
(cb.keyHandler(b_a,c_a,d_a))then a_a(b_a,"key",c_a,d_a)return true end;return
false end,keyUpHandler=function(b_a,c_a)if
(cb.keyUpHandler(b_a,c_a))then a_a(b_a,"key_up",c_a)return true end
return false end,charHandler=function(b_a,c_a)if
(cb.charHandler(b_a,c_a))then a_a(b_a,"char",c_a)return true end
return false end,getFocusHandler=function(b_a)
cb.getFocusHandler(b_a)
if(_d~=nil)then
if not(_d:isDead())then
if not(ad)then
if(b_a.parent~=nil)then
local c_a,d_a=dc.getCursorPos()local _aa,aaa=b_a:getAnchorPosition()local baa,caa=b_a:getSize()
if
(
_aa+c_a-1 >=1 and _aa+c_a-1 <=_aa+baa-1 and
d_a+aaa-1 >=1 and d_a+aaa-1 <=aaa+caa-1)then
b_a.parent:setCursor(dc.getCursorBlink(),_aa+c_a-1,d_a+aaa-1,dc.getTextColor())end end end end end end,loseFocusHandler=function(b_a)
cb.loseFocusHandler(b_a)
if(_d~=nil)then if not(_d:isDead())then if(b_a.parent~=nil)then
b_a.parent:setCursor(false)end end end end,eventHandler=function(b_a,c_a,d_a,_aa,aaa,baa)
if
(cb.eventHandler(b_a,c_a,d_a,_aa,aaa,baa))then if(_d==nil)then return end
if(c_a=="dynamicValueEvent")then local caa,daa=dc.getSize()
local _ba,aba=b_a:getSize()
if(caa~=_ba)or(daa~=aba)then dc.basalt_resize(_ba,aba)if not
(_d:isDead())then dd(b_a,"term_resize")end end
dc.basalt_reposition(b_a:getAnchorPosition())end
if not(_d:isDead())then
if not(ad)then if(c_a~="terminate")then
dd(b_a,c_a,d_a,_aa,aaa,baa)end
if(b_a:isFocused())then
local caa,daa=b_a:getAnchorPosition()local _ba,aba=dc.getCursorPos()
if(b_a.parent~=nil)then
local bba,cba=b_a:getSize()
if
(caa+_ba-1 >=1 and caa+_ba-1 <=caa+bba-1 and
aba+daa-1 >=1 and aba+daa-1 <=daa+cba-1)then
b_a.parent:setCursor(dc.getCursorBlink(),caa+_ba-1,aba+daa-1,dc.getTextColor())end end;if(c_a=="terminate")then dd(b_a,c_a)
b_a.parent:setCursor(false)return true end end else
table.insert(bd,{event=c_a,args={d_a,_aa,aaa,baa}})end end;return false end end,draw=function(b_a)
if
(cb.draw(b_a))then
if(b_a.parent~=nil)then local c_a,d_a=b_a:getAnchorPosition()
local _aa,aaa=dc.getCursorPos()local baa,caa=b_a:getSize()dc.basalt_reposition(c_a,d_a)
dc.basalt_update()
if
(c_a+_aa-1 >=1 and c_a+_aa-1 <=c_a+baa-1 and
aaa+d_a-1 >=1 and aaa+d_a-1 <=d_a+caa-1)then
b_a.parent:setCursor(b_a:isFocused()and dc.getCursorBlink(),
c_a+_aa-1,aaa+d_a-1,dc.getTextColor())end end end end,onError=function(b_a,...)
for c_a,d_a in
pairs(table.pack(...))do if(type(d_a)=="function")then
b_a:registerEvent("program_error",d_a)end end;if(b_a.parent~=nil)then
b_a.parent:addEvent("other_event",b_a)end;return b_a end,onDone=function(b_a,...)
for c_a,d_a in
pairs(table.pack(...))do if(type(d_a)=="function")then
b_a:registerEvent("program_done",d_a)end end;if(b_a.parent~=nil)then
b_a.parent:addEvent("other_event",b_a)end;return b_a end,init=function(b_a)
if
(cb.init(b_a))then b_a.bgColor=b_a.parent:getTheme("ProgramBG")end end}return setmetatable(_c,cb)end
end; 
project['objects']['Progressbar'] = function(...)local c=require("Object")
local d=require("utils").getValueFromXML
return
function(_a)local aa=c(_a)local ba="Progressbar"local ca=0;aa:setZIndex(5)
aa:setValue(false)aa.width=25;aa.height=1;local da;local _b=""local ab=colors.white;local bb=""local cb=0
local db={init=function(_c)
if
(aa.init(_c))then _c.bgColor=_c.parent:getTheme("ProgressbarBG")
_c.fgColor=_c.parent:getTheme("ProgressbarText")da=_c.parent:getTheme("ProgressbarActiveBG")end end,getType=function(_c)return
ba end,setValuesByXMLData=function(_c,ac)aa.setValuesByXMLData(_c,ac)if(d("direction",ac)~=
nil)then cb=d("direction",ac)end
if(
d("progressColor",ac)~=nil)then da=colors[d("progressColor",ac)]end
if(d("progressSymbol",ac)~=nil)then _b=d("progressSymbol",ac)end;if(d("backgroundSymbol",ac)~=nil)then
bb=d("backgroundSymbol",ac)end
if
(d("progressSymbolColor",ac)~=nil)then ab=colors[d("progressSymbolColor",ac)]end;if(d("onDone",ac)~=nil)then
_c:generateXMLEventFunction(_c.onProgressDone,d("onDone",ac))end;return _c end,setDirection=function(_c,ac)
cb=ac;_c:updateDraw()return _c end,setProgressBar=function(_c,ac,bc,cc)da=ac or da
_b=bc or _b;ab=cc or ab;_c:updateDraw()return _c end,setBackgroundSymbol=function(_c,ac)
bb=ac:sub(1,1)_c:updateDraw()return _c end,setProgress=function(_c,ac)if
(ac>=0)and(ac<=100)and(ca~=ac)then ca=ac;_c:setValue(ca)if(ca==100)then
_c:progressDoneHandler()end end
_c:updateDraw()return _c end,getProgress=function(_c)return
ca end,onProgressDone=function(_c,ac)_c:registerEvent("progress_done",ac)
return _c end,progressDoneHandler=function(_c)
_c:sendEvent("progress_done",_c)end,draw=function(_c)
if(aa.draw(_c))then
if(_c.parent~=nil)then
local ac,bc=_c:getAnchorPosition()local cc,dc=_c:getSize()if(_c.bgColor~=false)then
_c.parent:drawBackgroundBox(ac,bc,cc,dc,_c.bgColor)end;if(bb~="")then
_c.parent:drawTextBox(ac,bc,cc,dc,bb)end;if(_c.fgColor~=false)then
_c.parent:drawForegroundBox(ac,bc,cc,dc,_c.fgColor)end
if(cb==1)then
_c.parent:drawBackgroundBox(ac,bc,cc,dc/100 *ca,da)
_c.parent:drawForegroundBox(ac,bc,cc,dc/100 *ca,ab)
_c.parent:drawTextBox(ac,bc,cc,dc/100 *ca,_b)elseif(cb==2)then
_c.parent:drawBackgroundBox(ac,bc+math.ceil(dc-dc/100 *ca),cc,
dc/100 *ca,da)
_c.parent:drawForegroundBox(ac,bc+math.ceil(dc-dc/100 *ca),cc,dc/
100 *ca,ab)
_c.parent:drawTextBox(ac,bc+math.ceil(dc-dc/100 *ca),cc,
dc/100 *ca,_b)elseif(cb==3)then
_c.parent:drawBackgroundBox(ac+math.ceil(cc-cc/100 *ca),bc,
cc/100 *ca,dc,da)
_c.parent:drawForegroundBox(ac+math.ceil(cc-cc/100 *ca),bc,
cc/100 *ca,dc,ab)
_c.parent:drawTextBox(ac+math.ceil(cc-cc/100 *ca),bc,cc/100 *
ca,dc,_b)else
_c.parent:drawBackgroundBox(ac,bc,cc/100 *ca,dc,da)
_c.parent:drawForegroundBox(ac,bc,cc/100 *ca,dc,ab)
_c.parent:drawTextBox(ac,bc,cc/100 *ca,dc,_b)end end end end}return setmetatable(db,aa)end
end; 
project['objects']['Radio'] = function(...)local d=require("Object")local _a=require("utils")
local aa=_a.getValueFromXML
return
function(ba)local ca=d(ba)local da="Radio"ca.width=8;ca:setZIndex(5)local _b={}local ab;local bb;local cb
local db;local _c;local ac;local bc=true;local cc="\7"local dc="left"
local _d={getType=function(ad)return da end,setValuesByXMLData=function(ad,bd)
ca.setValuesByXMLData(ad,bd)if(aa("selectionBG",bd)~=nil)then
ab=colors[aa("selectionBG",bd)]end;if(aa("selectionFG",bd)~=nil)then
bb=colors[aa("selectionFG",bd)]end;if(aa("boxBG",bd)~=nil)then
cb=colors[aa("boxBG",bd)]end;if(aa("inactiveBoxBG",bd)~=nil)then
_c=colors[aa("inactiveBoxBG",bd)]end;if(aa("inactiveBoxFG",bd)~=nil)then
ac=colors[aa("inactiveBoxFG",bd)]end;if(aa("boxFG",bd)~=nil)then
db=colors[aa("boxFG",bd)]end;if(aa("symbol",bd)~=nil)then
cc=aa("symbol",bd)end
if(bd["item"]~=nil)then local cd=bd["item"]if
(cd.properties~=nil)then cd={cd}end;for dd,__a in pairs(cd)do
ad:addItem(aa("text",__a),aa("x",__a),aa("y",__a),colors[aa("bg",__a)],colors[aa("fg",__a)])end end;return ad end,addItem=function(ad,bd,cd,dd,__a,a_a,...)
table.insert(_b,{x=
cd or 1,y=dd or 1,text=bd,bgCol=__a or ad.bgColor,fgCol=a_a or ad.fgColor,args={...}})if(#_b==1)then ad:setValue(_b[1])end
ad:updateDraw()return ad end,getAll=function(ad)return
_b end,removeItem=function(ad,bd)table.remove(_b,bd)ad:updateDraw()return ad end,getItem=function(ad,bd)return
_b[bd]end,getItemIndex=function(ad)local bd=ad:getValue()for cd,dd in pairs(_b)do
if(dd==bd)then return cd end end end,clear=function(ad)
_b={}ad:setValue({},false)ad:updateDraw()return ad end,getItemCount=function(ad)return
#_b end,editItem=function(ad,bd,cd,dd,__a,a_a,b_a,...)table.remove(_b,bd)
table.insert(_b,bd,{x=dd or 1,y=__a or 1,text=cd,bgCol=a_a or
ad.bgColor,fgCol=b_a or ad.fgColor,args={...}})ad:updateDraw()return ad end,selectItem=function(ad,bd)ad:setValue(
_b[bd]or{},false)ad:updateDraw()return ad end,setActiveSymbol=function(ad,bd)
cc=bd:sub(1,1)ad:updateDraw()return ad end,setSelectedItem=function(ad,bd,cd,dd,__a,a_a)ab=bd or ab
bb=cd or bb;cb=dd or cb;db=__a or db;bc=a_a~=nil and a_a or true
ad:updateDraw()return ad end,mouseHandler=function(ad,bd,cd,dd)
if(#_b>
0)then
local __a,a_a=ad:getAbsolutePosition(ad:getAnchorPosition())
for b_a,c_a in pairs(_b)do
if(__a+c_a.x-1 <=cd)and(
__a+c_a.x-1 +c_a.text:len()+1 >=cd)and(
a_a+c_a.y-1 ==dd)then ad:setValue(c_a)
local d_a=ad:getEventSystem():sendEvent("mouse_click",ad,"mouse_click",bd,cd,dd)if(d_a==false)then return d_a end;if(ad.parent~=nil)then
ad.parent:setFocusedObject(ad)end;ad:updateDraw()return true end end end;return false end,draw=function(ad)
if(
ad.parent~=nil)then local bd,cd=ad:getAnchorPosition()
for dd,__a in pairs(_b)do
if
(__a==ad:getValue())then if(dc=="left")then
ad.parent:writeText(__a.x+bd-1,__a.y+cd-1,cc,cb,db)
ad.parent:writeText(__a.x+2 +bd-1,__a.y+cd-1,__a.text,ab,bb)end else
ad.parent:drawBackgroundBox(
__a.x+bd-1,__a.y+cd-1,1,1,_c or ad.bgColor)
ad.parent:writeText(__a.x+2 +bd-1,__a.y+cd-1,__a.text,__a.bgCol,__a.fgCol)end end;return true end end,init=function(ad)
ad.parent:addEvent("mouse_click",ad)
if(ca.init(ad))then ad.bgColor=ad.parent:getTheme("MenubarBG")
ad.fgColor=ad.parent:getTheme("MenubarFG")ab=ad.parent:getTheme("SelectionBG")
bb=ad.parent:getTheme("SelectionText")cb=ad.parent:getTheme("MenubarBG")
db=ad.parent:getTheme("MenubarText")end end}return setmetatable(_d,ca)end
end; 
project['objects']['Scrollbar'] = function(...)local c=require("Object")
local d=require("utils").getValueFromXML
return
function(_a)local aa=c(_a)local ba="Scrollbar"aa.width=1;aa.height=8;aa:setValue(1)
aa:setZIndex(2)local ca="vertical"local da=" "local _b;local ab="\127"local bb=aa.height;local cb=1;local db=1
local function _c(bc,cc,dc,_d)
local ad,bd=bc:getAbsolutePosition(bc:getAnchorPosition())local cd,dd=bc:getSize()
if(ca=="horizontal")then for _index=0,cd do
if
(ad+_index==dc)and(bd<=_d)and(bd+dd>_d)then
cb=math.min(_index+1,cd- (db-1))bc:setValue(bb/cd* (cb))bc:updateDraw()end end end
if(ca=="vertical")then for _index=0,dd do
if
(bd+_index==_d)and(ad<=dc)and(ad+cd>dc)then cb=math.min(_index+1,dd- (db-1))
bc:setValue(bb/dd* (cb))bc:updateDraw()end end end end
local ac={getType=function(bc)return ba end,setSymbol=function(bc,cc)da=cc:sub(1,1)bc:updateDraw()return bc end,setValuesByXMLData=function(bc,cc)
aa.setValuesByXMLData(bc,cc)
if(d("maxValue",cc)~=nil)then bb=d("maxValue",cc)end;if(d("backgroundSymbol",cc)~=nil)then
ab=d("backgroundSymbol",cc):sub(1,1)end;if(d("symbol",cc)~=nil)then
da=d("symbol",cc):sub(1,1)end;if(d("barType",cc)~=nil)then
ca=d("barType",cc):lower()end;if(d("symbolSize",cc)~=nil)then
bc:setSymbolSize(d("symbolSize",cc))end;if(d("symbolColor",cc)~=nil)then
_b=colors[d("symbolColor",cc)]end;if(d("index",cc)~=nil)then
bc:setIndex(d("index",cc))end end,setIndex=function(bc,cc)
cb=cc;if(cb<1)then cb=1 end;local dc,_d=bc:getSize()
cb=math.min(cb,(ca=="vertical"and _d or
dc)- (db-1))
bc:setValue(bb/ (ca=="vertical"and _d or dc)*cb)bc:updateDraw()return bc end,getIndex=function(bc)return
cb end,setSymbolSize=function(bc,cc)db=tonumber(cc)or 1;local dc,_d=bc:getSize()
if(ca==
"vertical")then
bc:setValue(cb-1 * (bb/ (_d- (db-1)))-
(bb/ (_d- (db-1))))elseif(ca=="horizontal")then
bc:setValue(cb-1 * (bb/ (dc- (db-1)))- (bb/ (dc-
(db-1))))end;bc:updateDraw()return bc end,setMaxValue=function(bc,cc)
bb=cc;bc:updateDraw()return bc end,setBackgroundSymbol=function(bc,cc)
ab=string.sub(cc,1,1)bc:updateDraw()return bc end,setSymbolColor=function(bc,cc)_b=cc
bc:updateDraw()return bc end,setBarType=function(bc,cc)ca=cc:lower()bc:updateDraw()
return bc end,mouseHandler=function(bc,cc,dc,_d)if(aa.mouseHandler(bc,cc,dc,_d))then
_c(bc,cc,dc,_d)return true end;return false end,dragHandler=function(bc,cc,dc,_d)if
(aa.dragHandler(bc,cc,dc,_d))then _c(bc,cc,dc,_d)return true end;return false end,scrollHandler=function(bc,cc,dc,_d)
if
(aa.scrollHandler(bc,cc,dc,_d))then local ad,bd=bc:getSize()cb=cb+cc;if(cb<1)then cb=1 end
cb=math.min(cb,(
ca=="vertical"and bd or ad)- (db-1))
bc:setValue(bb/ (ca=="vertical"and bd or ad)*cb)bc:updateDraw()end end,draw=function(bc)
if
(aa.draw(bc))then
if(bc.parent~=nil)then local cc,dc=bc:getAnchorPosition()
local _d,ad=bc:getSize()
if(ca=="horizontal")then
bc.parent:writeText(cc,dc,ab:rep(cb-1),bc.bgColor,bc.fgColor)
bc.parent:writeText(cc+cb-1,dc,da:rep(db),_b,_b)
bc.parent:writeText(cc+cb+db-1,dc,ab:rep(_d- (cb+db-1)),bc.bgColor,bc.fgColor)end
if(ca=="vertical")then
for n=0,ad-1 do
if(cb==n+1)then for curIndexOffset=0,math.min(db-1,ad)do
bc.parent:writeText(cc,dc+n+curIndexOffset,da,_b,_b)end else if
(n+1 <cb)or(n+1 >cb-1 +db)then
bc.parent:writeText(cc,dc+n,ab,bc.bgColor,bc.fgColor)end end end end end end end,init=function(bc)
bc.parent:addEvent("mouse_click",bc)bc.parent:addEvent("mouse_drag",bc)
bc.parent:addEvent("mouse_scroll",bc)
if(aa.init(bc))then
bc.bgColor=bc.parent:getTheme("ScrollbarBG")bc.fgColor=bc.parent:getTheme("ScrollbarText")
_b=bc.parent:getTheme("ScrollbarSymbolColor")end end}return setmetatable(ac,aa)end
end; 
project['objects']['Slider'] = function(...)local d=require("Object")local _a=require("basaltLogs")
local aa=require("utils").getValueFromXML
return
function(ba)local ca=d(ba)local da="Slider"ca.width=8;ca.height=1;ca:setValue(1)
local _b="horizontal"local ab=" "local bb;local cb="\140"local db=ca.width;local _c=1;local ac=1
local function bc(dc,_d,ad,bd)
local cd,dd=dc:getAbsolutePosition(dc:getAnchorPosition())local __a,a_a=dc:getSize()
if(_b=="horizontal")then for _index=0,__a do
if
(cd+_index==ad)and(dd<=bd)and(dd+a_a>bd)then
_c=math.min(_index+1,__a- (ac-1))dc:setValue(db/__a* (_c))dc:updateDraw()end end end
if(_b=="vertical")then for _index=0,a_a do
if
(dd+_index==bd)and(cd<=ad)and(cd+__a>ad)then _c=math.min(_index+1,a_a- (ac-1))
dc:setValue(db/a_a* (_c))dc:updateDraw()end end end end
local cc={getType=function(dc)return da end,setSymbol=function(dc,_d)ab=_d:sub(1,1)dc:updateDraw()return dc end,setValuesByXMLData=function(dc,_d)
ca.setValuesByXMLData(dc,_d)
if(aa("maxValue",_d)~=nil)then db=aa("maxValue",_d)end;if(aa("backgroundSymbol",_d)~=nil)then
cb=aa("backgroundSymbol",_d):sub(1,1)end;if(aa("barType",_d)~=nil)then
_b=aa("barType",_d):lower()end;if(aa("symbol",_d)~=nil)then
ab=aa("symbol",_d):sub(1,1)end;if(aa("symbolSize",_d)~=nil)then
dc:setSymbolSize(aa("symbolSize",_d))end;if(aa("symbolColor",_d)~=nil)then
bb=colors[aa("symbolColor",_d)]end;if(aa("index",_d)~=nil)then
dc:setIndex(aa("index",_d))end end,setIndex=function(dc,_d)
_c=_d;if(_c<1)then _c=1 end;local ad,bd=dc:getSize()
_c=math.min(_c,(_b=="vertical"and bd or
ad)- (ac-1))
dc:setValue(db/ (_b=="vertical"and bd or ad)*_c)dc:updateDraw()return dc end,getIndex=function(dc)return
_c end,setSymbolSize=function(dc,_d)ac=tonumber(_d)or 1
if(_b=="vertical")then
dc:setValue(_c-1 * (db/
(h- (ac-1)))- (db/ (h- (ac-1))))elseif(_b=="horizontal")then
dc:setValue(_c-1 * (db/ (w- (ac-1)))- (db/
(w- (ac-1))))end;dc:updateDraw()return dc end,setMaxValue=function(dc,_d)
db=_d;return dc end,setBackgroundSymbol=function(dc,_d)cb=string.sub(_d,1,1)
dc:updateDraw()return dc end,setSymbolColor=function(dc,_d)bb=_d;dc:updateDraw()return dc end,setBarType=function(dc,_d)
_b=_d:lower()dc:updateDraw()return dc end,mouseHandler=function(dc,_d,ad,bd)if
(ca.mouseHandler(dc,_d,ad,bd))then bc(dc,_d,ad,bd)return true end;return false end,dragHandler=function(dc,_d,ad,bd)if
(ca.dragHandler(dc,_d,ad,bd))then bc(dc,_d,ad,bd)return true end;return false end,scrollHandler=function(dc,_d,ad,bd)
if
(ca.scrollHandler(dc,_d,ad,bd))then local cd,dd=dc:getSize()_c=_c+_d;if(_c<1)then _c=1 end
_c=math.min(_c,(
_b=="vertical"and dd or cd)- (ac-1))
dc:setValue(db/ (_b=="vertical"and dd or cd)*_c)dc:updateDraw()return true end;return false end,draw=function(dc)
if
(ca.draw(dc))then
if(dc.parent~=nil)then local _d,ad=dc:getAnchorPosition()
local bd,cd=dc:getSize()
if(_b=="horizontal")then
dc.parent:writeText(_d,ad,cb:rep(_c-1),dc.bgColor,dc.fgColor)
dc.parent:writeText(_d+_c-1,ad,ab:rep(ac),bb,bb)
dc.parent:writeText(_d+_c+ac-1,ad,cb:rep(bd- (_c+ac-1)),dc.bgColor,dc.fgColor)end
if(_b=="vertical")then
for n=0,cd-1 do
if(_c==n+1)then for curIndexOffset=0,math.min(ac-1,cd)do
dc.parent:writeText(_d,ad+n+curIndexOffset,ab,bb,bb)end else if
(n+1 <_c)or(n+1 >_c-1 +ac)then
dc.parent:writeText(_d,ad+n,cb,dc.bgColor,dc.fgColor)end end end end end end end,init=function(dc)
dc.parent:addEvent("mouse_click",dc)dc.parent:addEvent("mouse_drag",dc)
dc.parent:addEvent("mouse_scroll",dc)
if(ca.init(dc))then dc.bgColor=dc.parent:getTheme("SliderBG")
dc.fgColor=dc.parent:getTheme("SliderText")bb=dc.parent:getTheme("SliderSymbolColor")end end}return setmetatable(cc,ca)end
end; 
project['objects']['Switch'] = function(...)local c=require("Object")
local d=require("utils").getValueFromXML
return
function(_a)local aa=c(_a)local ba="Switch"aa.width=2;aa.height=1
aa.bgColor=colors.lightGray;aa.fgColor=colors.gray;aa:setValue(false)aa:setZIndex(5)
local ca=colors.black;local da=colors.red;local _b=colors.green
local ab={getType=function(bb)return ba end,setSymbolColor=function(bb,cb)ca=cb
bb:updateDraw()return bb end,setActiveBackground=function(bb,cb)_b=cb;bb:updateDraw()return bb end,setInactiveBackground=function(bb,cb)
da=cb;bb:updateDraw()return bb end,setValuesByXMLData=function(bb,cb)
aa.setValuesByXMLData(bb,cb)if(d("inactiveBG",cb)~=nil)then
da=colors[d("inactiveBG",cb)]end;if(d("activeBG",cb)~=nil)then
_b=colors[d("activeBG",cb)]end;if(d("symbolColor",cb)~=nil)then
ca=colors[d("symbolColor",cb)]end end,mouseHandler=function(bb,cb,db,_c)
if
(aa.mouseHandler(bb,cb,db,_c))then
local ac,bc=bb:getAbsolutePosition(bb:getAnchorPosition())bb:setValue(not bb:getValue())
bb:updateDraw()return true end end,draw=function(bb)
if
(aa.draw(bb))then
if(bb.parent~=nil)then local cb,db=bb:getAnchorPosition()
local _c,ac=bb:getSize()
bb.parent:drawBackgroundBox(cb,db,_c,ac,bb.bgColor)
if(bb:getValue())then
bb.parent:drawBackgroundBox(cb,db,1,ac,_b)bb.parent:drawBackgroundBox(cb+1,db,1,ac,ca)else
bb.parent:drawBackgroundBox(cb,db,1,ac,ca)bb.parent:drawBackgroundBox(cb+1,db,1,ac,da)end end end end,init=function(bb)
bb.parent:addEvent("mouse_click",bb)
if(aa.init(bb))then bb.bgColor=bb.parent:getTheme("SwitchBG")
bb.fgColor=bb.parent:getTheme("SwitchText")ca=bb.parent:getTheme("SwitchBGSymbol")
da=bb.parent:getTheme("SwitchInactive")_b=bb.parent:getTheme("SwitchActive")end end}return setmetatable(ab,aa)end
end; 
project['objects']['Textfield'] = function(...)local _b=require("Object")local ab=require("tHex")
local bb=require("utils").getValueFromXML;local cb=require("basaltLogs")
local db,_c,ac,bc,cc=string.rep,string.find,string.gmatch,string.sub,string.len
return
function(dc)local _d=_b(dc)local ad="Textfield"local bd,cd,dd,__a=1,1,1,1;local a_a={" "}local b_a={""}local c_a={""}
local d_a={}local _aa={}local aaa,baa,caa,daa;local _ba,aba=colors.lightBlue,colors.black;_d.width=30
_d.height=12;_d:setZIndex(5)local function bba()
if
(aaa~=nil)and(baa~=nil)and(caa~=nil)and(daa~=nil)then return true end;return false end
local function cba()local _da,ada,bda,cda
if
(bba())then if(aaa>baa)then _da,ada=baa,aaa else _da,ada=aaa,baa end;if(caa>daa)then
bda,cda=daa,caa else bda,cda=caa,daa end end;return _da,ada,bda,cda end;local function dba()end
local function _ca(_da)local ada,bda,cda,dda=cba(_da)
for n=dda,cda,-1 do
if(n==cda)or(n==dda)then local __b=a_a[n]
local a_b=b_a[n]local b_b=c_a[n]
if(n==cda)and(n==dda)then __b=__b:sub(1,ada-1)..
__b:sub(bda+1,__b:len())a_b=a_b:sub(1,ada-1)..
a_b:sub(bda+1,a_b:len())b_b=b_b:sub(1,ada-1)..
b_b:sub(bda+1,b_b:len())elseif(n==ada)then
__b=__b:sub(1,ada)a_b=a_b:sub(1,ada)b_b=b_b:sub(1,ada)elseif(n==cda)then
__b=__b:sub(bda,__b:len())a_b=a_b:sub(bda,a_b:len())
b_b=b_b:sub(bda,b_b:len())end;a_a[n]=__b;b_a[n]=a_b;c_a[n]=b_b else table.remove(a_a,n)
table.remove(b_a,n)table.remove(c_a,n)end end;dd,__a=aaa,caa;aaa,baa,caa,daa=nil,nil,nil,nil;return _da end
local function aca(_da,ada)local bda={}
if(_da:len()>0)then
for cda in ac(_da,ada)do local dda,__b=_c(_da,cda)
if
(dda~=nil)and(__b~=nil)then table.insert(bda,dda)table.insert(bda,__b)
local a_b=bc(_da,1,(dda-1))local b_b=bc(_da,__b+1,_da:len())_da=a_b.. (":"):rep(cda:len())..
b_b end end end;return bda end
local function bca(_da,ada)ada=ada or __a
local bda=ab[_da.fgColor]:rep(c_a[ada]:len())
local cda=ab[_da.bgColor]:rep(b_a[ada]:len())
for dda,__b in pairs(_aa)do local a_b=aca(a_a[ada],__b[1])
if(#a_b>0)then
for x=1,#a_b/2 do
local b_b=x*2 -1;if(__b[2]~=nil)then
bda=bda:sub(1,a_b[b_b]-1)..ab[__b[2] ]:rep(a_b[b_b+1]- (
a_b[b_b]-1))..
bda:sub(a_b[b_b+1]+1,bda:len())end;if
(__b[3]~=nil)then
cda=cda:sub(1,a_b[b_b]-1)..

ab[__b[3] ]:rep(a_b[b_b+1]- (a_b[b_b]-1))..cda:sub(a_b[b_b+1]+1,cda:len())end end end end
for dda,__b in pairs(d_a)do
for a_b,b_b in pairs(__b)do local c_b=aca(a_a[ada],b_b)
if(#c_b>0)then for x=1,#c_b/2 do
local d_b=x*2 -1
bda=bda:sub(1,c_b[d_b]-1)..

ab[dda]:rep(c_b[d_b+1]- (c_b[d_b]-1))..bda:sub(c_b[d_b+1]+1,bda:len())end end end end;c_a[ada]=bda;b_a[ada]=cda;_da:updateDraw()end;local function cca(_da)for n=1,#a_a do bca(_da,n)end end
local dca={getType=function(_da)return ad end,setBackground=function(_da,ada)
_d.setBackground(_da,ada)cca(_da)return _da end,setForeground=function(_da,ada)
_d.setForeground(_da,ada)cca(_da)return _da end,setValuesByXMLData=function(_da,ada)
_d.setValuesByXMLData(_da,ada)
if(ada["lines"]~=nil)then local bda=ada["lines"]["line"]if
(bda.properties~=nil)then bda={bda}end;for cda,dda in pairs(bda)do
_da:addLine(dda:value())end end
if(ada["keywords"]~=nil)then
for bda,cda in pairs(ada["keywords"])do
if(colors[bda]~=nil)then
local dda=cda;if(dda.properties~=nil)then dda={dda}end;local __b={}
for a_b,b_b in pairs(dda)do
local c_b=b_b["keyword"]if(b_b["keyword"].properties~=nil)then
c_b={b_b["keyword"]}end;for d_b,_ab in pairs(c_b)do
table.insert(__b,_ab:value())end end;_da:addKeywords(colors[bda],__b)end end end
if(ada["rules"]~=nil)then
if(ada["rules"]["rule"]~=nil)then
local bda=ada["rules"]["rule"]if(ada["rules"]["rule"].properties~=nil)then
bda={ada["rules"]["rule"]}end
for cda,dda in pairs(bda)do if(bb("pattern",dda)~=nil)then
_da:addRule(bb("pattern",dda),colors[bb("fg",dda)],colors[bb("bg",dda)])end end end end end,getLines=function(_da)return
a_a end,getLine=function(_da,ada)return a_a[ada]end,editLine=function(_da,ada,bda)
a_a[ada]=bda or a_a[ada]bca(_da,ada)_da:updateDraw()return _da end,clear=function(_da)
a_a={" "}b_a={""}c_a={""}aaa,baa,caa,daa=nil,nil,nil,nil;bd,cd,dd,__a=1,1,1,1
_da:updateDraw()return _da end,addLine=function(_da,ada,bda)
if
(ada~=nil)then
if(#a_a==1)and(a_a[1]=="")then a_a[1]=ada
b_a[1]=ab[_da.bgColor]:rep(ada:len())c_a[1]=ab[_da.fgColor]:rep(ada:len())
bca(_da,1)return _da end
if(bda~=nil)then table.insert(a_a,bda,ada)
table.insert(b_a,bda,ab[_da.bgColor]:rep(ada:len()))
table.insert(c_a,bda,ab[_da.fgColor]:rep(ada:len()))else table.insert(a_a,ada)
table.insert(b_a,ab[_da.bgColor]:rep(ada:len()))
table.insert(c_a,ab[_da.fgColor]:rep(ada:len()))end end;bca(_da,bda or#a_a)_da:updateDraw()return _da end,addKeywords=function(_da,ada,bda)if(
d_a[ada]==nil)then d_a[ada]={}end;for cda,dda in pairs(bda)do
table.insert(d_a[ada],dda)end;_da:updateDraw()return _da end,addRule=function(_da,ada,bda,cda)
table.insert(_aa,{ada,bda,cda})_da:updateDraw()return _da end,editRule=function(_da,ada,bda,cda)for dda,__b in
pairs(_aa)do
if(__b[1]==ada)then _aa[dda][2]=bda;_aa[dda][3]=cda end end;_da:updateDraw()return _da end,removeRule=function(_da,ada)
for bda,cda in
pairs(_aa)do if(cda[1]==ada)then table.remove(_aa,bda)end end;_da:updateDraw()return _da end,setKeywords=function(_da,ada,bda)
d_a[ada]=bda;_da:updateDraw()return _da end,removeLine=function(_da,ada)
if(#a_a>1)then table.remove(a_a,
ada or#a_a)
table.remove(b_a,ada or#b_a)table.remove(c_a,ada or#c_a)else a_a={" "}b_a={""}c_a={""}end;_da:updateDraw()return _da end,getTextCursor=function(_da)return
dd,__a end,getFocusHandler=function(_da)_d.getFocusHandler(_da)
if(_da.parent~=nil)then
local ada,bda=_da:getAnchorPosition()if(_da.parent~=nil)then
_da.parent:setCursor(true,ada+dd-cd,bda+__a-bd,_da.fgColor)end end end,loseFocusHandler=function(_da)
_d.loseFocusHandler(_da)
if(_da.parent~=nil)then _da.parent:setCursor(false)end end,keyHandler=function(_da,ada)
if
(_d.keyHandler(_da,event,ada))then local bda,cda=_da:getAnchorPosition()local dda,__b=_da:getSize()
if(ada==
keys.backspace)then
if(a_a[__a]=="")then
if(__a>1)then table.remove(a_a,__a)
table.remove(c_a,__a)table.remove(b_a,__a)
dd=a_a[__a-1]:len()+1;cd=dd-dda+1;if(cd<1)then cd=1 end;__a=__a-1 end elseif(dd<=1)then
if(__a>1)then dd=a_a[__a-1]:len()+1;cd=dd-dda+1;if(cd<
1)then cd=1 end;a_a[__a-1]=a_a[__a-1]..a_a[__a]c_a[
__a-1]=c_a[__a-1]..c_a[__a]b_a[__a-1]=b_a[__a-1]..
b_a[__a]table.remove(a_a,__a)
table.remove(c_a,__a)table.remove(b_a,__a)__a=__a-1 end else a_a[__a]=a_a[__a]:sub(1,dd-2)..
a_a[__a]:sub(dd,a_a[__a]:len())
c_a[__a]=c_a[__a]:sub(1,
dd-2)..c_a[__a]:sub(dd,c_a[__a]:len())b_a[__a]=b_a[__a]:sub(1,dd-2)..
b_a[__a]:sub(dd,b_a[__a]:len())
if(dd>1)then dd=dd-1 end;if(cd>1)then if(dd<cd)then cd=cd-1 end end end;if(__a<bd)then bd=bd-1 end;bca(_da)_da:setValue("")end
if(ada==keys.delete)then
if(bba())then _ca(_da)else
if(dd>a_a[__a]:len())then
if(
a_a[__a+1]~=nil)then a_a[__a]=a_a[__a]..a_a[__a+1]
table.remove(a_a,__a+1)table.remove(b_a,__a+1)table.remove(c_a,__a+1)end else a_a[__a]=a_a[__a]:sub(1,dd-1)..
a_a[__a]:sub(dd+1,a_a[__a]:len())
c_a[__a]=c_a[__a]:sub(1,
dd-1)..c_a[__a]:sub(dd+1,c_a[__a]:len())b_a[__a]=b_a[__a]:sub(1,dd-1)..
b_a[__a]:sub(dd+1,b_a[__a]:len())end end;bca(_da)end
if(ada==keys.enter)then
table.insert(a_a,__a+1,a_a[__a]:sub(dd,a_a[__a]:len()))
table.insert(c_a,__a+1,c_a[__a]:sub(dd,c_a[__a]:len()))
table.insert(b_a,__a+1,b_a[__a]:sub(dd,b_a[__a]:len()))a_a[__a]=a_a[__a]:sub(1,dd-1)
c_a[__a]=c_a[__a]:sub(1,dd-1)b_a[__a]=b_a[__a]:sub(1,dd-1)__a=__a+1;dd=1;cd=1;if
(__a-bd>=__b)then bd=bd+1 end;_da:setValue("")end
if(ada==keys.up)then
if(__a>1)then __a=__a-1;if(dd>a_a[__a]:len()+1)then dd=
a_a[__a]:len()+1 end;if(cd>1)then if(dd<cd)then cd=dd-dda+1;if
(cd<1)then cd=1 end end end;if(
bd>1)then if(__a<bd)then bd=bd-1 end end end end
if(ada==keys.down)then
if(__a<#a_a)then __a=__a+1;if
(dd>a_a[__a]:len()+1)then dd=a_a[__a]:len()+1 end
if(cd>1)then if(dd<cd)then cd=
dd-dda+1;if(cd<1)then cd=1 end end end;if(__a>=bd+__b)then bd=bd+1 end end end
if(ada==keys.right)then dd=dd+1
if(__a<#a_a)then if(dd>a_a[__a]:len()+1)then
dd=1;__a=__a+1 end elseif(dd>a_a[__a]:len())then dd=
a_a[__a]:len()+1 end;if(dd<1)then dd=1 end
if(dd<cd)or(dd>=dda+cd)then cd=dd-dda+1 end;if(cd<1)then cd=1 end end
if(ada==keys.left)then dd=dd-1;if(dd>=1)then
if(dd<cd)or(dd>=dda+cd)then cd=dd end end
if(__a>1)then if(dd<1)then __a=__a-1
dd=a_a[__a]:len()+1;cd=dd-dda+1 end end;if(dd<1)then dd=1 end;if(cd<1)then cd=1 end end
if not
( (bda+dd-cd>=bda and bda+dd-cd<bda+dda)and(
cda+__a-bd>=cda and cda+__a-bd<cda+__b))then cd=math.max(1,
a_a[__a]:len()-dda+1)
bd=math.max(1,__a-__b+1)end;local a_b=
(dd<=a_a[__a]:len()and dd-1 or a_a[__a]:len())- (cd-1)
if(a_b>
_da:getX()+dda-1)then a_b=_da:getX()+dda-1 end
local b_b=(__a-bd<__b and __a-bd or __a-bd-1)if(a_b<1)then a_b=0 end
_da.parent:setCursor(true,bda+a_b,cda+b_b,_da.fgColor)_da:updateDraw()return true end end,charHandler=function(_da,ada)
if
(_d.charHandler(_da,ada))then local bda,cda=_da:getAnchorPosition()local dda,__b=_da:getSize()a_a[__a]=a_a[__a]:sub(1,
dd-1)..
ada..a_a[__a]:sub(dd,a_a[__a]:len())
c_a[__a]=c_a[__a]:sub(1,
dd-1)..ab[_da.fgColor]..
c_a[__a]:sub(dd,c_a[__a]:len())
b_a[__a]=b_a[__a]:sub(1,dd-1)..ab[_da.bgColor]..
b_a[__a]:sub(dd,b_a[__a]:len())dd=dd+1;if(dd>=dda+cd)then cd=cd+1 end;bca(_da)
_da:setValue("")
if not
( (bda+dd-cd>=bda and bda+dd-cd<bda+dda)and(
cda+__a-bd>=cda and cda+__a-bd<cda+__b))then cd=math.max(1,
a_a[__a]:len()-dda+1)
bd=math.max(1,__a-__b+1)end;local a_b=
(dd<=a_a[__a]:len()and dd-1 or a_a[__a]:len())- (cd-1)
if(a_b>
_da:getX()+dda-1)then a_b=_da:getX()+dda-1 end
local b_b=(__a-bd<__b and __a-bd or __a-bd-1)if(a_b<1)then a_b=0 end;if(bba())then _ca(_da)end;_da.parent:setCursor(true,bda+a_b,
cda+b_b,_da.fgColor)
_da:updateDraw()return true end end,dragHandler=function(_da,ada,bda,cda)
if
(_d.dragHandler(_da,ada,bda,cda))then
local dda,__b=_da:getAbsolutePosition(_da:getAnchorPosition())local a_b,b_b=_da:getAnchorPosition()local c_b,d_b=_da:getSize()
if(a_a[
cda-__b+bd]~=nil)then
if
(a_b+c_b>a_b+bda- (dda+1)+cd)and(a_b<a_b+bda-dda+cd)then
dd=bda-dda+cd;__a=cda-__b+bd;baa=dd;daa=__a;if(dd>a_a[__a]:len())then dd=
a_a[__a]:len()+1;baa=dd end;if(dd<cd)then cd=dd-1
if(cd<1)then cd=1 end end
_da.parent:setCursor(true,a_b+dd-cd,b_b+__a-bd,_da.fgColor)_da:updateDraw()end end;return true end end,scrollHandler=function(_da,ada,bda,cda)
if
(_d.scrollHandler(_da,ada,bda,cda))then
local dda,__b=_da:getAbsolutePosition(_da:getAnchorPosition())local a_b,b_b=_da:getAnchorPosition()local c_b,d_b=_da:getSize()
bd=bd+ada;if(bd>#a_a- (d_b-1))then bd=#a_a- (d_b-1)end;if
(bd<1)then bd=1 end
if

(dda+dd-cd>=dda and dda+dd-cd<dda+c_b)and(b_b+__a-bd>=b_b and b_b+__a-bd<b_b+d_b)then
_da.parent:setCursor(true,a_b+dd-cd,b_b+__a-bd,_da.fgColor)else _da.parent:setCursor(false)end;_da:updateDraw()return true end end,mouseHandler=function(_da,ada,bda,cda)
if
(_d.mouseHandler(_da,ada,bda,cda))then
local dda,__b=_da:getAbsolutePosition(_da:getAnchorPosition())local a_b,b_b=_da:getAnchorPosition()
if
(a_a[cda-__b+bd]~=nil)then dd=bda-dda+cd;__a=cda-__b+bd;baa=nil;daa=nil;aaa=dd;caa=__a
if(dd>
a_a[__a]:len())then dd=a_a[__a]:len()+1;aaa=dd end;if(dd<cd)then cd=dd-1;if(cd<1)then cd=1 end end
_da:updateDraw()end;if(_da.parent~=nil)then
_da.parent:setCursor(true,a_b+dd-cd,b_b+__a-bd,_da.fgColor)end;return true end end,mouseUpHandler=function(_da,ada,bda,cda)
if
(_d.mouseUpHandler(_da,ada,bda,cda))then
local dda,__b=_da:getAbsolutePosition(_da:getAnchorPosition())local a_b,b_b=_da:getAnchorPosition()
if
(a_a[cda-__b+bd]~=nil)then baa=bda-dda+cd;daa=cda-__b+bd;if(baa>a_a[daa]:len())then baa=
a_a[daa]:len()+1 end;if(aaa==baa)and(caa==daa)then aaa,baa,caa,daa=
nil,nil,nil,nil end
_da:updateDraw()end;return true end end,eventHandler=function(_da,ada,bda,cda,dda,__b)
if
(_d.eventHandler(_da,ada,bda,cda,dda,__b))then
if(ada=="paste")then
if(_da:isFocused())then local a_b,b_b=_da:getSize()a_a[__a]=a_a[__a]:sub(1,
dd-1)..
bda..a_a[__a]:sub(dd,a_a[__a]:len())
c_a[__a]=c_a[__a]:sub(1,
dd-1)..ab[_da.fgColor]:rep(bda:len())..
c_a[__a]:sub(dd,c_a[__a]:len())
b_a[__a]=b_a[__a]:sub(1,dd-1)..

ab[_da.bgColor]:rep(bda:len())..b_a[__a]:sub(dd,b_a[__a]:len())dd=dd+bda:len()if(dd>=a_b+cd)then cd=(dd+1)-a_b end
local c_b,d_b=_da:getAnchorPosition()
_da.parent:setCursor(true,c_b+dd-cd,d_b+__a-bd,_da.fgColor)bca(_da)_da:updateDraw()end end end end,draw=function(_da)
if
(_d.draw(_da))then
if(_da.parent~=nil)then local ada,bda=_da:getAnchorPosition()
local cda,dda=_da:getSize()
for n=1,dda do local __b=""local a_b=""local b_b=""
if(a_a[n+bd-1]~=nil)then __b=a_a[n+bd-1]b_b=c_a[
n+bd-1]a_b=b_a[n+bd-1]end;__b=__b:sub(cd,cda+cd-1)
a_b=a_b:sub(cd,cda+cd-1)b_b=b_b:sub(cd,cda+cd-1)local c_b=cda-__b:len()if(c_b<0)then
c_b=0 end;__b=__b..db(_da.bgSymbol,c_b)a_b=a_b..
db(ab[_da.bgColor],c_b)
b_b=b_b..db(ab[_da.fgColor],c_b)_da.parent:setText(ada,bda+n-1,__b)_da.parent:setBG(ada,
bda+n-1,a_b)
_da.parent:setFG(ada,bda+n-1,b_b)end
if
(aaa~=nil)and(baa~=nil)and(caa~=nil)and(daa~=nil)then local __b,a_b,b_b,c_b=cba(_da)
for n=b_b,c_b do local d_b=a_a[n]:len()local _ab=0
if
(n==b_b)and(n==c_b)then _ab=__b-1;d_b=d_b- (__b-1)- (d_b-a_b)elseif(n==c_b)then
d_b=d_b- (d_b-a_b)elseif(n==b_b)then d_b=d_b- (__b-1)_ab=__b-1 end
_da.parent:setBG(ada+_ab,bda+n-1,db(ab[_ba],d_b))
_da.parent:setFG(ada+_ab,bda+n-1,db(ab[aba],d_b))end end
if(_da:isFocused())then local __b,a_b=_da:getAnchorPosition()end end end end,init=function(_da)
_da.parent:addEvent("mouse_click",_da)_da.parent:addEvent("mouse_up",_da)
_da.parent:addEvent("mouse_scroll",_da)_da.parent:addEvent("mouse_drag",_da)
_da.parent:addEvent("key",_da)_da.parent:addEvent("char",_da)
_da.parent:addEvent("other_event",_da)
if(_d.init(_da))then
_da.bgColor=_da.parent:getTheme("TextfieldBG")_da.fgColor=_da.parent:getTheme("TextfieldText")end end}return setmetatable(dca,_d)end
end; 
project['objects']['Thread'] = function(...)local b=require("utils").getValueFromXML
return
function(c)local d;local _a="Thread"local aa;local ba
local ca=false;local da
local _b=function(ab,bb)
if(bb:sub(1,1)=="#")then
local cb=ab:getBaseFrame():getDeepObject(bb:sub(2,bb:len()))
if(cb~=nil)and(cb.internalObjetCall~=nil)then return(function()
cb:internalObjetCall()end)end else return ab:getBaseFrame():getVariable(bb)end;return ab end
d={name=c,getType=function(ab)return _a end,getZIndex=function(ab)return 1 end,getName=function(ab)return ab.name end,getBaseFrame=function(ab)if
(ab.parent~=nil)then return ab.parent:getBaseFrame()end
return ab end,setValuesByXMLData=function(ab,bb)local cb;if(b("thread",bb)~=nil)then
cb=_b(ab,b("thread",bb))end
if(b("start",bb)~=nil)then if
(b("start",bb))and(cb~=nil)then ab:start(cb)end end;return ab end,start=function(ab,bb)
if(
bb==nil)then error("Function provided to thread is nil")end;aa=bb;ba=coroutine.create(aa)ca=true;da=nil
local cb,db=coroutine.resume(ba)da=db;if not(cb)then if(db~="Terminated")then
error("Thread Error Occurred - "..db)end end
ab.parent:addEvent("mouse_click",ab)ab.parent:addEvent("mouse_up",ab)
ab.parent:addEvent("mouse_scroll",ab)ab.parent:addEvent("mouse_drag",ab)
ab.parent:addEvent("key",ab)ab.parent:addEvent("key_up",ab)
ab.parent:addEvent("char",ab)ab.parent:addEvent("other_event",ab)return ab end,getStatus=function(ab,bb)if(
ba~=nil)then return coroutine.status(ba)end;return nil end,stop=function(ab,bb)
ca=false;ab.parent:removeEvent("mouse_click",ab)
ab.parent:removeEvent("mouse_up",ab)ab.parent:removeEvent("mouse_scroll",ab)
ab.parent:removeEvent("mouse_drag",ab)ab.parent:removeEvent("key",ab)
ab.parent:removeEvent("key_up",ab)ab.parent:removeEvent("char",ab)
ab.parent:removeEvent("other_event",ab)return ab end,mouseHandler=function(ab,...)
ab:eventHandler("mouse_click",...)end,mouseUpHandler=function(ab,...)ab:eventHandler("mouse_up",...)end,mouseScrollHandler=function(ab,...)
ab:eventHandler("mouse_scroll",...)end,mouseDragHandler=function(ab,...)
ab:eventHandler("mouse_drag",...)end,mouseMoveHandler=function(ab,...)
ab:eventHandler("mouse_move",...)end,keyHandler=function(ab,...)ab:eventHandler("key",...)end,keyUpHandler=function(ab,...)
ab:eventHandler("key_up",...)end,charHandler=function(ab,...)ab:eventHandler("char",...)end,eventHandler=function(ab,bb,...)
if
(ca)then
if(coroutine.status(ba)=="suspended")then if(da~=nil)then if(bb~=da)then return end;da=
nil end
local cb,db=coroutine.resume(ba,bb,...)da=db;if not(cb)then if(db~="Terminated")then
error("Thread Error Occurred - "..db)end end else
ab:stop()end end end}d.__index=d;return d end
end; 
project['objects']['Timer'] = function(...)local c=require("basaltEvent")
local d=require("utils").getValueFromXML
return
function(_a)local aa="Timer"local ba=0;local ca=0;local da=0;local _b;local ab=c()local bb=false
local cb=function(_c,ac,bc)
local cc=function(dc)
if(dc:sub(1,1)=="#")then
local _d=_c:getBaseFrame():getDeepObject(dc:sub(2,dc:len()))
if(_d~=nil)and(_d.internalObjetCall~=nil)then ac(_c,function()
_d:internalObjetCall()end)end else
ac(_c,_c:getBaseFrame():getVariable(dc))end end;if(type(bc)=="string")then cc(bc)elseif(type(bc)=="table")then
for dc,_d in pairs(bc)do cc(_d)end end;return _c end
local db={name=_a,getType=function(_c)return aa end,setValuesByXMLData=function(_c,ac)
if(d("time",ac)~=nil)then ba=d("time",ac)end;if(d("repeat",ac)~=nil)then ca=d("repeat",ac)end
if(
d("start",ac)~=nil)then if(d("start",ac))then _c:start()end end;if(d("onCall",ac)~=nil)then
cb(_c,_c.onCall,d("onCall",ac))end;return _c end,getBaseFrame=function(_c)
if(
_c.parent~=nil)then return _c.parent:getBaseFrame()end;return _c end,getZIndex=function(_c)return 1 end,getName=function(_c)
return _c.name end,setTime=function(_c,ac,bc)ba=ac or 0;ca=bc or 1;return _c end,start=function(_c)if(bb)then
os.cancelTimer(_b)end;da=ca;_b=os.startTimer(ba)bb=true
_c.parent:addEvent("other_event",_c)return _c end,isActive=function(_c)return bb end,cancel=function(_c)if(
_b~=nil)then os.cancelTimer(_b)end;bb=false
_c.parent:removeEvent("other_event",_c)return _c end,onCall=function(_c,ac)
ab:registerEvent("timed_event",ac)return _c end,eventHandler=function(_c,ac,bc)
if
ac=="timer"and bc==_b and bb then ab:sendEvent("timed_event",_c)
if(da>=1)then da=da-1;if(da>=1)then
_b=os.startTimer(ba)end elseif(da==-1)then _b=os.startTimer(ba)end end end}db.__index=db;return db end
end; 
project['libraries']['basaltDraw'] = function(...)local d=require("tHex")local _a,aa=string.sub,string.rep
return
function(ba)
local ca=ba or term.current()local da;local _b,ab=ca.getSize()local bb={}local cb={}local db={}local _c={}local ac={}local bc={}local cc
local dc={}local function _d()cc=aa(" ",_b)
for n=0,15 do local b_a=2 ^n;local c_a=d[b_a]dc[b_a]=aa(c_a,_b)end end;_d()
local function ad()_d()local b_a=cc
local c_a=dc[colors.white]local d_a=dc[colors.black]
for currentY=1,ab do
bb[currentY]=_a(
bb[currentY]==nil and b_a or
bb[currentY]..b_a:sub(1,_b-bb[currentY]:len()),1,_b)
db[currentY]=_a(db[currentY]==nil and c_a or db[currentY]..c_a:sub(1,_b-
db[currentY]:len()),1,_b)
cb[currentY]=_a(cb[currentY]==nil and d_a or cb[currentY]..d_a:sub(1,_b-
cb[currentY]:len()),1,_b)end end;ad()
local function bd(b_a,c_a,d_a)
if(c_a>=1)and(c_a<=ab)then
if
(b_a+d_a:len()>0)and(b_a<=_b)then local _aa=bb[c_a]local aaa;local baa=b_a+#d_a-1
if(b_a<1)then local caa=1 -b_a+1
local daa=_b-b_a+1;d_a=_a(d_a,caa,daa)elseif(baa>_b)then local caa=_b-b_a+1;d_a=_a(d_a,1,caa)end
if(b_a>1)then local caa=b_a-1;aaa=_a(_aa,1,caa)..d_a else aaa=d_a end;if baa<_b then aaa=aaa.._a(_aa,baa+1,_b)end
bb[c_a]=aaa end end end
local function cd(b_a,c_a,d_a)
if(c_a>=1)and(c_a<=ab)then
if(b_a+d_a:len()>0)and(b_a<=_b)then
local _aa=cb[c_a]local aaa;local baa=b_a+#d_a-1
if(b_a<1)then
d_a=_a(d_a,1 -b_a+1,_b-b_a+1)elseif(baa>_b)then d_a=_a(d_a,1,_b-b_a+1)end
if(b_a>1)then aaa=_a(_aa,1,b_a-1)..d_a else aaa=d_a end;if baa<_b then aaa=aaa.._a(_aa,baa+1,_b)end
cb[c_a]=aaa end end end
local function dd(b_a,c_a,d_a)
if(c_a>=1)and(c_a<=ab)then
if(b_a+d_a:len()>0)and(b_a<=_b)then
local _aa=db[c_a]local aaa;local baa=b_a+#d_a-1
if(b_a<1)then local caa=1 -b_a+1;local daa=_b-b_a+1
d_a=_a(d_a,caa,daa)elseif(baa>_b)then local caa=_b-b_a+1;d_a=_a(d_a,1,caa)end
if(b_a>1)then local caa=b_a-1;aaa=_a(_aa,1,caa)..d_a else aaa=d_a end;if baa<_b then aaa=aaa.._a(_aa,baa+1,_b)end
db[c_a]=aaa end end end
local function __a(b_a,c_a,d_a,_aa,aaa)
if(#d_a==#_aa)or(#d_a==#aaa)then
if(c_a>=1)and(c_a<=ab)then
if(
b_a+d_a:len()>0)and(b_a<=_b)then local baa=bb[c_a]local caa=db[c_a]local daa=cb[c_a]
local _ba,aba,bba;local cba=b_a+#d_a-1
if(b_a<1)then local dba=1 -b_a+1;local _ca=_b-b_a+1
d_a=_a(d_a,dba,_ca)_aa=_a(_aa,dba,_ca)aaa=_a(aaa,dba,_ca)elseif(cba>_b)then local dba=_b-b_a+1
d_a=_a(d_a,1,dba)_aa=_a(_aa,1,dba)aaa=_a(aaa,1,dba)end
if(b_a>1)then local dba=b_a-1;_ba=_a(baa,1,dba)..d_a
aba=_a(caa,1,dba).._aa;bba=_a(daa,1,dba)..aaa else _ba=d_a;aba=_aa;bba=aaa end
if cba<_b then _ba=_ba.._a(baa,cba+1,_b)
aba=aba.._a(caa,cba+1,_b)bba=bba.._a(daa,cba+1,_b)end;bb[c_a]=_ba;db[c_a]=aba;cb[c_a]=bba end end end end
local a_a={setSize=function(b_a,c_a)_b,ab=b_a,c_a;ad()end,setMirror=function(b_a)da=b_a end,setBG=function(b_a,c_a,d_a)cd(b_a,c_a,d_a)end,setText=function(b_a,c_a,d_a)
bd(b_a,c_a,d_a)end,setFG=function(b_a,c_a,d_a)dd(b_a,c_a,d_a)end,blit=function(b_a,c_a,d_a,_aa,aaa)
__a(b_a,c_a,d_a,_aa,aaa)end,drawBackgroundBox=function(b_a,c_a,d_a,_aa,aaa)for n=1,_aa do
cd(b_a,c_a+ (n-1),aa(d[aaa],d_a))end end,drawForegroundBox=function(b_a,c_a,d_a,_aa,aaa)
for n=1,_aa do dd(b_a,c_a+
(n-1),aa(d[aaa],d_a))end end,drawTextBox=function(b_a,c_a,d_a,_aa,aaa)for n=1,_aa do
bd(b_a,c_a+ (n-1),aa(aaa,d_a))end end,writeText=function(b_a,c_a,d_a,_aa,aaa)
if(d_a~=nil)then
bd(b_a,c_a,d_a)if(_aa~=nil)and(_aa~=false)then
cd(b_a,c_a,aa(d[_aa],d_a:len()))end;if(aaa~=nil)and(aaa~=false)then
dd(b_a,c_a,aa(d[aaa],d_a:len()))end end end,update=function()
local b_a,c_a=ca.getCursorPos()local d_a=false
if(ca.getCursorBlink~=nil)then d_a=ca.getCursorBlink()end;ca.setCursorBlink(false)if(da~=nil)then
da.setCursorBlink(false)end
for n=1,ab do ca.setCursorPos(1,n)
ca.blit(bb[n],db[n],cb[n])if(da~=nil)then da.setCursorPos(1,n)
da.blit(bb[n],db[n],cb[n])end end;ca.setBackgroundColor(colors.black)
ca.setCursorBlink(d_a)ca.setCursorPos(b_a,c_a)
if(da~=nil)then
da.setBackgroundColor(colors.black)da.setCursorBlink(d_a)da.setCursorPos(b_a,c_a)end end,setTerm=function(b_a)
ca=b_a end}return a_a end
end; 
project['libraries']['basaltEvent'] = function(...)
return
function()local a={}local b={}
local c={registerEvent=function(d,_a,aa)if(a[_a]==nil)then a[_a]={}b[_a]=1 end
a[_a][b[_a] ]=aa;b[_a]=b[_a]+1;return b[_a]-1 end,removeEvent=function(d,_a,aa)a[_a][aa[_a] ]=
nil end,sendEvent=function(d,_a,...)local aa
if(a[_a]~=nil)then for ba,ca in pairs(a[_a])do local da=ca(...)if(da==
false)then aa=da end end end;return aa end}c.__index=c;return c end
end; 
project['libraries']['basaltLogs'] = function(...)local _a=""local aa="basaltLog.txt"local ba="Debug"
fs.delete(_a~=""and _a.."/"..aa or aa)
local ca={__call=function(da,_b,ab)if(_b==nil)then return end
local bb=_a~=""and _a.."/"..aa or aa
local cb=fs.open(bb,fs.exists(bb)and"a"or"w")
cb.writeLine("[Basalt][".. (ab and ab or ba).."]: "..tostring(_b))cb.close()end}return setmetatable({},ca)
end; 
project['libraries']['basaltMon'] = function(...)
local aa={[colors.white]="0",[colors.orange]="1",[colors.magenta]="2",[colors.lightBlue]="3",[colors.yellow]="4",[colors.lime]="5",[colors.pink]="6",[colors.gray]="7",[colors.lightGray]="8",[colors.cyan]="9",[colors.purple]="a",[colors.blue]="b",[colors.brown]="c",[colors.green]="d",[colors.red]="e",[colors.black]="f"}local ba,ca,da,_b=type,string.len,string.rep,string.sub
return
function(ab)local bb={}
for _aa,aaa in pairs(ab)do
bb[_aa]={}
for baa,caa in pairs(aaa)do local daa=peripheral.wrap(caa)if(daa==nil)then
error("Unable to find monitor "..caa)end;bb[_aa][baa]=daa
bb[_aa][baa].name=caa end end;local cb,db,_c,ac,bc,cc,dc,_d=1,1,1,1,0,0,0,0;local ad,bd=false,1
local cd,dd=colors.white,colors.black
local function __a()local _aa,aaa=0,0
for baa,caa in pairs(bb)do local daa,_ba=0,0
for aba,bba in pairs(caa)do local cba,dba=bba.getSize()
daa=daa+cba;_ba=dba>_ba and dba or _ba end;_aa=_aa>daa and _aa or daa;aaa=aaa+_ba end;dc,_d=_aa,aaa end;__a()
local function a_a()local _aa=0;local aaa,baa=0,0
for caa,daa in pairs(bb)do local _ba=0;local aba=0
for bba,cba in pairs(daa)do
local dba,_ca=cba.getSize()if(cb-_ba>=1)and(cb-_ba<=dba)then aaa=bba end;cba.setCursorPos(
cb-_ba,db-_aa)_ba=_ba+dba
if(aba<_ca)then aba=_ca end end;if(db-_aa>=1)and(db-_aa<=aba)then baa=caa end
_aa=_aa+aba end;_c,ac=aaa,baa end;a_a()
local function b_a(_aa,...)local aaa={...}return
function()for baa,caa in pairs(bb)do for daa,_ba in pairs(caa)do
_ba[_aa](table.unpack(aaa))end end end end
local function c_a()b_a("setCursorBlink",false)()
if not(ad)then return end;if(bb[ac]==nil)then return end;local _aa=bb[ac][_c]
if(_aa==nil)then return end;_aa.setCursorBlink(ad)end
local function d_a(_aa,aaa,baa)if(bb[ac]==nil)then return end;local caa=bb[ac][_c]
if(caa==nil)then return end;caa.blit(_aa,aaa,baa)local daa,_ba=caa.getSize()
if
(ca(_aa)+cb>daa)then local aba=bb[ac][_c+1]if(aba~=nil)then aba.blit(_aa,aaa,baa)_c=_c+1;cb=cb+
ca(_aa)end end;a_a()end
return
{clear=b_a("clear"),setCursorBlink=function(_aa)ad=_aa;c_a()end,getCursorBlink=function()return ad end,getCursorPos=function()return cb,db end,setCursorPos=function(_aa,aaa)
cb,db=_aa,aaa;a_a()c_a()end,setTextScale=function(_aa)
b_a("setTextScale",_aa)()__a()a_a()bd=_aa end,getTextScale=function()return bd end,blit=function(_aa,aaa,baa)
d_a(_aa,aaa,baa)end,write=function(_aa)_aa=tostring(_aa)local aaa=ca(_aa)
d_a(_aa,da(aa[cd],aaa),da(aa[dd],aaa))end,getSize=function()return dc,_d end,setBackgroundColor=function(_aa)
b_a("setBackgroundColor",_aa)()dd=_aa end,setTextColor=function(_aa)
b_a("setTextColor",_aa)()cd=_aa end,calculateClick=function(_aa,aaa,baa)local caa=0
for daa,_ba in pairs(bb)do local aba=0;local bba=0
for cba,dba in pairs(_ba)do
local _ca,aca=dba.getSize()if(dba.name==_aa)then return aaa+aba,baa+caa end
aba=aba+_ca;if(aca>bba)then bba=aca end end;caa=caa+bba end;return aaa,baa end}end
end; 
project['libraries']['bigfont'] = function(...)local ba=require("tHex")
local ca={{"\32\32\32\137\156\148\158\159\148\135\135\144\159\139\32\136\157\32\159\139\32\32\143\32\32\143\32\32\32\32\32\32\32\32\147\148\150\131\148\32\32\32\151\140\148\151\140\147","\32\32\32\149\132\149\136\156\149\144\32\133\139\159\129\143\159\133\143\159\133\138\32\133\138\32\133\32\32\32\32\32\32\150\150\129\137\156\129\32\32\32\133\131\129\133\131\132","\32\32\32\130\131\32\130\131\32\32\129\32\32\32\32\130\131\32\130\131\32\32\32\32\143\143\143\32\32\32\32\32\32\130\129\32\130\135\32\32\32\32\131\32\32\131\32\131","\139\144\32\32\143\148\135\130\144\149\32\149\150\151\149\158\140\129\32\32\32\135\130\144\135\130\144\32\149\32\32\139\32\159\148\32\32\32\32\159\32\144\32\148\32\147\131\132","\159\135\129\131\143\149\143\138\144\138\32\133\130\149\149\137\155\149\159\143\144\147\130\132\32\149\32\147\130\132\131\159\129\139\151\129\148\32\32\139\131\135\133\32\144\130\151\32","\32\32\32\32\32\32\130\135\32\130\32\129\32\129\129\131\131\32\130\131\129\140\141\132\32\129\32\32\129\32\32\32\32\32\32\32\131\131\129\32\32\32\32\32\32\32\32\32","\32\32\32\32\149\32\159\154\133\133\133\144\152\141\132\133\151\129\136\153\32\32\154\32\159\134\129\130\137\144\159\32\144\32\148\32\32\32\32\32\32\32\32\32\32\32\151\129","\32\32\32\32\133\32\32\32\32\145\145\132\141\140\132\151\129\144\150\146\129\32\32\32\138\144\32\32\159\133\136\131\132\131\151\129\32\144\32\131\131\129\32\144\32\151\129\32","\32\32\32\32\129\32\32\32\32\130\130\32\32\129\32\129\32\129\130\129\129\32\32\32\32\130\129\130\129\32\32\32\32\32\32\32\32\133\32\32\32\32\32\129\32\129\32\32","\150\156\148\136\149\32\134\131\148\134\131\148\159\134\149\136\140\129\152\131\32\135\131\149\150\131\148\150\131\148\32\148\32\32\148\32\32\152\129\143\143\144\130\155\32\134\131\148","\157\129\149\32\149\32\152\131\144\144\131\148\141\140\149\144\32\149\151\131\148\32\150\32\150\131\148\130\156\133\32\144\32\32\144\32\130\155\32\143\143\144\32\152\129\32\134\32","\130\131\32\131\131\129\131\131\129\130\131\32\32\32\129\130\131\32\130\131\32\32\129\32\130\131\32\130\129\32\32\129\32\32\133\32\32\32\129\32\32\32\130\32\32\32\129\32","\150\140\150\137\140\148\136\140\132\150\131\132\151\131\148\136\147\129\136\147\129\150\156\145\138\143\149\130\151\32\32\32\149\138\152\129\149\32\32\157\152\149\157\144\149\150\131\148","\149\143\142\149\32\149\149\32\149\149\32\144\149\32\149\149\32\32\149\32\32\149\32\149\149\32\149\32\149\32\144\32\149\149\130\148\149\32\32\149\32\149\149\130\149\149\32\149","\130\131\129\129\32\129\131\131\32\130\131\32\131\131\32\131\131\129\129\32\32\130\131\32\129\32\129\130\131\32\130\131\32\129\32\129\131\131\129\129\32\129\129\32\129\130\131\32","\136\140\132\150\131\148\136\140\132\153\140\129\131\151\129\149\32\149\149\32\149\149\32\149\137\152\129\137\152\129\131\156\133\149\131\32\150\32\32\130\148\32\152\137\144\32\32\32","\149\32\32\149\159\133\149\32\149\144\32\149\32\149\32\149\32\149\150\151\129\138\155\149\150\130\148\32\149\32\152\129\32\149\32\32\32\150\32\32\149\32\32\32\32\32\32\32","\129\32\32\130\129\129\129\32\129\130\131\32\32\129\32\130\131\32\32\129\32\129\32\129\129\32\129\32\129\32\131\131\129\130\131\32\32\32\129\130\131\32\32\32\32\140\140\132","\32\154\32\159\143\32\149\143\32\159\143\32\159\144\149\159\143\32\159\137\145\159\143\144\149\143\32\32\145\32\32\32\145\149\32\144\32\149\32\143\159\32\143\143\32\159\143\32","\32\32\32\152\140\149\151\32\149\149\32\145\149\130\149\157\140\133\32\149\32\154\143\149\151\32\149\32\149\32\144\32\149\149\153\32\32\149\32\149\133\149\149\32\149\149\32\149","\32\32\32\130\131\129\131\131\32\130\131\32\130\131\129\130\131\129\32\129\32\140\140\129\129\32\129\32\129\32\137\140\129\130\32\129\32\130\32\129\32\129\129\32\129\130\131\32","\144\143\32\159\144\144\144\143\32\159\143\144\159\138\32\144\32\144\144\32\144\144\32\144\144\32\144\144\32\144\143\143\144\32\150\129\32\149\32\130\150\32\134\137\134\134\131\148","\136\143\133\154\141\149\151\32\129\137\140\144\32\149\32\149\32\149\154\159\133\149\148\149\157\153\32\154\143\149\159\134\32\130\148\32\32\149\32\32\151\129\32\32\32\32\134\32","\133\32\32\32\32\133\129\32\32\131\131\32\32\130\32\130\131\129\32\129\32\130\131\129\129\32\129\140\140\129\131\131\129\32\130\129\32\129\32\130\129\32\32\32\32\32\129\32","\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32","\32\32\32\32\32\32\32\32\32\32\32\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\32\32\32\32\32\32\32\32\32\32\32","\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32","\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32\32\32\32\32\149\32\32\149\32\32\32\32","\32\32\32\32\32\32\32\32\32\32\32\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\32\32\32\32\32\32\32\32\32\32\32","\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32\32\149\32","\32\32\32\32\145\32\159\139\32\151\131\132\155\143\132\134\135\145\32\149\32\158\140\129\130\130\32\152\147\155\157\134\32\32\144\144\32\32\32\32\32\32\152\131\155\131\131\129","\32\32\32\32\149\32\149\32\145\148\131\32\149\32\149\140\157\132\32\148\32\137\155\149\32\32\32\149\154\149\137\142\32\153\153\32\131\131\149\131\131\129\149\135\145\32\32\32","\32\32\32\32\129\32\130\135\32\131\131\129\134\131\132\32\129\32\32\129\32\131\131\32\32\32\32\130\131\129\32\32\32\32\129\129\32\32\32\32\32\32\130\131\129\32\32\32","\150\150\32\32\148\32\134\32\32\132\32\32\134\32\32\144\32\144\150\151\149\32\32\32\32\32\32\145\32\32\152\140\144\144\144\32\133\151\129\133\151\129\132\151\129\32\145\32","\130\129\32\131\151\129\141\32\32\142\32\32\32\32\32\149\32\149\130\149\149\32\143\32\32\32\32\142\132\32\154\143\133\157\153\132\151\150\148\151\158\132\151\150\148\144\130\148","\32\32\32\140\140\132\32\32\32\32\32\32\32\32\32\151\131\32\32\129\129\32\32\32\32\134\32\32\32\32\32\32\32\129\129\32\129\32\129\129\130\129\129\32\129\130\131\32","\156\143\32\159\141\129\153\140\132\153\137\32\157\141\32\159\142\32\150\151\129\150\131\132\140\143\144\143\141\145\137\140\148\141\141\144\157\142\32\159\140\32\151\134\32\157\141\32","\157\140\149\157\140\149\157\140\149\157\140\149\157\140\149\157\140\149\151\151\32\154\143\132\157\140\32\157\140\32\157\140\32\157\140\32\32\149\32\32\149\32\32\149\32\32\149\32","\129\32\129\129\32\129\129\32\129\129\32\129\129\32\129\129\32\129\129\131\129\32\134\32\131\131\129\131\131\129\131\131\129\131\131\129\130\131\32\130\131\32\130\131\32\130\131\32","\151\131\148\152\137\145\155\140\144\152\142\145\153\140\132\153\137\32\154\142\144\155\159\132\150\156\148\147\32\144\144\130\145\136\137\32\146\130\144\144\130\145\130\136\32\151\140\132","\151\32\149\151\155\149\149\32\149\149\32\149\149\32\149\149\32\149\149\32\149\152\137\144\157\129\149\149\32\149\149\32\149\149\32\149\149\32\149\130\150\32\32\157\129\149\32\149","\131\131\32\129\32\129\130\131\32\130\131\32\130\131\32\130\131\32\130\131\32\32\32\32\130\131\32\130\131\32\130\131\32\130\131\32\130\131\32\32\129\32\130\131\32\133\131\32","\156\143\32\159\141\129\153\140\132\153\137\32\157\141\32\159\142\32\159\159\144\152\140\144\156\143\32\159\141\129\153\140\132\157\141\32\130\145\32\32\147\32\136\153\32\130\146\32","\152\140\149\152\140\149\152\140\149\152\140\149\152\140\149\152\140\149\149\157\134\154\143\132\157\140\133\157\140\133\157\140\133\157\140\133\32\149\32\32\149\32\32\149\32\32\149\32","\130\131\129\130\131\129\130\131\129\130\131\129\130\131\129\130\131\129\130\130\131\32\134\32\130\131\129\130\131\129\130\131\129\130\131\129\32\129\32\32\129\32\32\129\32\32\129\32","\159\134\144\137\137\32\156\143\32\159\141\129\153\140\132\153\137\32\157\141\32\32\132\32\159\143\32\147\32\144\144\130\145\136\137\32\146\130\144\144\130\145\130\138\32\146\130\144","\149\32\149\149\32\149\149\32\149\149\32\149\149\32\149\149\32\149\149\32\149\131\147\129\138\134\149\149\32\149\149\32\149\149\32\149\149\32\149\154\143\149\32\157\129\154\143\149","\130\131\32\129\32\129\130\131\32\130\131\32\130\131\32\130\131\32\130\131\32\32\32\32\130\131\32\130\131\129\130\131\129\130\131\129\130\131\129\140\140\129\130\131\32\140\140\129"},{"000110000110110000110010101000000010000000100101","000000110110000000000010101000000010000000100101","000000000000000000000000000000000000000000000000","100010110100000010000110110000010100000100000110","000000110000000010110110000110000000000000110000","000000000000000000000000000000000000000000000000","000000110110000010000000100000100000000000000010","000000000110110100010000000010000000000000000100","000000000000000000000000000000000000000000000000","010000000000100110000000000000000000000110010000","000000000000000000000000000010000000010110000000","000000000000000000000000000000000000000000000000","011110110000000100100010110000000100000000000000","000000000000000000000000000000000000000000000000","000000000000000000000000000000000000000000000000","110000110110000000000000000000010100100010000000","000010000000000000110110000000000100010010000000","000000000000000000000000000000000000000000000000","010110010110100110110110010000000100000110110110","000000000000000000000110000000000110000000000000","000000000000000000000000000000000000000000000000","010100010110110000000000000000110000000010000000","110110000000000000110000110110100000000010000000","000000000000000000000000000000000000000000000000","000100011111000100011111000100011111000100011111","000000000000100100100100011011011011111111111111","000000000000000000000000000000000000000000000000","000100011111000100011111000100011111000100011111","000000000000100100100100011011011011111111111111","100100100100100100100100100100100100100100100100","000000110100110110000010000011110000000000011000","000000000100000000000010000011000110000000001000","000000000000000000000000000000000000000000000000","010000100100000000000000000100000000010010110000","000000000000000000000000000000110110110110110000","000000000000000000000000000000000000000000000000","110110110110110110000000110110110110110110110110","000000000000000000000110000000000000000000000000","000000000000000000000000000000000000000000000000","000000000000110110000110010000000000000000010010","000010000000000000000000000000000000000000000000","000000000000000000000000000000000000000000000000","110110110110110110110000110110110110000000000000","000000000000000000000110000000000000000000000000","000000000000000000000000000000000000000000000000","110110110110110110110000110000000000000000010000","000000000000000000000000100000000000000110000110","000000000000000000000000000000000000000000000000"}}local da={}local _b={}
do local cb=0;local db=#ca[1]local _c=#ca[1][1]
for i=1,db,3 do
for j=1,_c,3 do
local ac=string.char(cb)local bc={}bc[1]=ca[1][i]:sub(j,j+2)
bc[2]=ca[1][i+1]:sub(j,j+2)bc[3]=ca[1][i+2]:sub(j,j+2)local cc={}cc[1]=ca[2][i]:sub(j,
j+2)cc[2]=ca[2][i+1]:sub(j,j+2)cc[3]=ca[2][
i+2]:sub(j,j+2)_b[ac]={bc,cc}cb=cb+1 end end;da[1]=_b end
local function ab(cb,db)local _c={["0"]="1",["1"]="0"}if cb<=#da then return true end
for f=#da+1,cb do local ac={}local bc=da[
f-1]
for char=0,255 do local cc=string.char(char)local dc={}local _d={}
local ad=bc[cc][1]local bd=bc[cc][2]
for i=1,#ad do local cd,dd,__a,a_a,b_a,c_a={},{},{},{},{},{}
for j=1,#ad[1]do
local d_a=_b[ad[i]:sub(j,j)][1]table.insert(cd,d_a[1])table.insert(dd,d_a[2])
table.insert(__a,d_a[3])local _aa=_b[ad[i]:sub(j,j)][2]
if
bd[i]:sub(j,j)=="1"then
table.insert(a_a,(_aa[1]:gsub("[01]",_c)))
table.insert(b_a,(_aa[2]:gsub("[01]",_c)))
table.insert(c_a,(_aa[3]:gsub("[01]",_c)))else table.insert(a_a,_aa[1])
table.insert(b_a,_aa[2])table.insert(c_a,_aa[3])end end;table.insert(dc,table.concat(cd))
table.insert(dc,table.concat(dd))table.insert(dc,table.concat(__a))
table.insert(_d,table.concat(a_a))table.insert(_d,table.concat(b_a))
table.insert(_d,table.concat(c_a))end;ac[cc]={dc,_d}if db then db="Font"..f.."Yeld"..char
os.queueEvent(db)os.pullEvent(db)end end;da[f]=ac end;return true end
local function bb(cb,db,_c,ac,bc)
if not type(db)=="string"then error("Not a String",3)end
local cc=type(_c)=="string"and _c:sub(1,1)or ba[_c]or
error("Wrong Front Color",3)
local dc=type(ac)=="string"and ac:sub(1,1)or ba[ac]or
error("Wrong Back Color",3)if(da[cb]==nil)then ab(3,false)end;local _d=da[cb]or
error("Wrong font size selected",3)if db==""then
return{{""},{""},{""}}end;local ad={}
for c_a in db:gmatch('.')do table.insert(ad,c_a)end;local bd={}local cd=#_d[ad[1] ][1]
for nLine=1,cd do local c_a={}
for i=1,#ad do c_a[i]=_d[ad[i] ]and
_d[ad[i] ][1][nLine]or""end;bd[nLine]=table.concat(c_a)end;local dd={}local __a={}local a_a={["0"]=cc,["1"]=dc}local b_a={["0"]=dc,["1"]=cc}
for nLine=1,cd do
local c_a={}local d_a={}
for i=1,#ad do
local _aa=_d[ad[i] ]and _d[ad[i] ][2][nLine]or""
c_a[i]=_aa:gsub("[01]",
bc and{["0"]=_c:sub(i,i),["1"]=ac:sub(i,i)}or a_a)
d_a[i]=_aa:gsub("[01]",
bc and{["0"]=ac:sub(i,i),["1"]=_c:sub(i,i)}or b_a)end;dd[nLine]=table.concat(c_a)
__a[nLine]=table.concat(d_a)end;return{bd,dd,__a}end;return bb
end; 
project['libraries']['bimg'] = function(...)local d,_a=string.sub,string.rep
local function aa(ba,ca)local da,_b=0,0;local ab,bb,cb={},{},{}local db,_c=1,1;local ac={}
local function bc()
for y=1,_b do if(
ab[y]==nil)then ab[y]=_a(" ",da)else
ab[y]=ab[y].._a(" ",da-#ab[y])end
if(bb[y]==nil)then bb[y]=_a("0",da)else bb[y]=
bb[y].._a("0",da-#bb[y])end;if(cb[y]==nil)then cb[y]=_a("f",da)else
cb[y]=cb[y].._a("f",da-#cb[y])end end end
local cc=function(bd,cd,dd)db=cd or db;_c=dd or _c
if(ab[_c]==nil)then ab[_c]=_a(" ",db-1)..bd..
_a(" ",da- (#bd+db))else ab[_c]=
d(ab[_c],1,db-1)..
_a(" ",db-#ab[_c])..bd..d(ab[_c],db+#bd,da)end;if(#ab[_c]>da)then da=#ab[_c]end;if(_c>_b)then _b=_c end
ca.updateSize(da,_b)end
local dc=function(bd,cd,dd)db=cd or db;_c=dd or _c
if(cb[_c]==nil)then cb[_c]=_a("f",db-1)..bd..
_a("f",da- (#bd+db))else cb[_c]=
d(cb[_c],1,db-1)..
_a("f",db-#cb[_c])..bd..d(cb[_c],db+#bd,da)end;if(#cb[_c]>da)then da=#cb[_c]end;if(_c>_b)then _b=_c end
ca.updateSize(da,_b)end
local _d=function(bd,cd,dd)db=cd or db;_c=dd or _c
if(bb[_c]==nil)then bb[_c]=_a("0",db-1)..bd..
_a("0",da- (#bd+db))else bb[_c]=
d(bb[_c],1,db-1)..
_a("0",db-#bb[_c])..bd..d(bb[_c],db+#bd,da)end;if(#bb[_c]>da)then da=#bb[_c]end;if(_c>_b)then _b=_c end
ca.updateSize(da,_b)end
local function ad(bd)ac={}ab,bb,cb={},{},{}
for cd,dd in pairs(ba)do if(type(cd)=="string")then ac[cd]=dd else
ab[cd],bb[cd],cb[cd]=dd[1],dd[2],dd[3]end end;ca.updateSize(da,_b)end;if(ba~=nil)then da=#ba[1][1]_b=#ba;ad(ba)end
return
{recalculateSize=bc,setFrame=ad,getFrame=function()local bd={}
for cd,dd in
pairs(ab)do table.insert(bd,{dd,bb[cd],cb[cd]})end;for cd,dd in pairs(ac)do bd[cd]=dd end;return bd,da,_b end,getImage=function()
local bd={}
for cd,dd in pairs(ab)do table.insert(bd,{dd,bb[cd],cb[cd]})end;return bd end,setFrameData=function(bd,cd)if(cd~=nil)then ac[bd]=cd else if(
type(bd)=="table")then ac=bd end end end,setFrameImage=function(bd)
for cd,dd in
pairs(bd.t)do ab[cd]=bd.t[cd]bb[cd]=bd.fg[cd]cb[cd]=bd.bg[cd]end end,getFrameImage=function()return{t=ab,fg=bb,bg=cb}end,getFrameData=function(bd)return(
bd~=nil and ac[bd]or ac)end,blit=function(bd,cd,dd,__a,a_a)
cc(bd,__a,a_a)_d(cd,__a,a_a)dc(dd,__a,a_a)end,text=cc,fg=_d,bg=dc,getSize=function()return
da,_b end,setSize=function(bd,cd)local dd,__a,a_a={},{},{}
for _y=1,cd do
if(ab[_y]~=nil)then dd[_y]=d(ab[_y],1,bd)..
_a(" ",bd-da)else dd[_y]=_a(" ",bd)end;if(bb[_y]~=nil)then
__a[_y]=d(bb[_y],1,bd).._a("0",bd-da)else __a[_y]=_a("0",bd)end;if
(cb[_y]~=nil)then a_a[_y]=d(cb[_y],1,bd).._a("f",bd-da)else
a_a[_y]=_a("f",bd)end end;ab,bb,cb=dd,__a,a_a;da,_b=bd,cd end}end
return
function(ba)local ca={}
local da={creator="Bimg Library by NyoriE",date=os.date("!%Y-%m-%dT%TZ")}local _b,ab=0,0;local bb={}
local function cb(ac,bc)ac=ac or#ca+1
table.insert(ca,ac,aa(bc,bb))if(bc==nil)then ca[ac].setSize(_b,ab)end end;local function db(ac)table.remove(ca,ac or#ca)end
local function _c(ac,bc)
local cc=ca[ac]
if(cc~=nil)then local dc=ac+bc;if(dc>=1)and(dc<=#ca)then table.remove(ca,ac)
table.insert(ca,dc,cc)end end end
bb={updateSize=function(ac,bc,cc)local dc=cc==true and true or false
if(ac>_b)then dc=true;_b=ac end;if(bc>ab)then dc=true;ab=bc end;if(dc)then for _d,ad in pairs(ca)do ad.setSize(_b,ab)
ad.recalculateSize()end end end,text=function(ac,bc,cc,dc)
local _d=ca[ac]if(_d==nil)then _d=cb(ac)end;_d.text(bc,cc,dc)end,fg=function(ac,bc,cc,dc)
local _d=ca[ac]if(_d==nil)then _d=cb(ac)end;_d.fg(bc,cc,dc)end,bg=function(ac,bc,cc,dc)
local _d=ca[ac]if(_d==nil)then _d=cb(ac)end;_d.bg(bc,cc,dc)end,blit=function(ac,bc,cc,dc,_d,ad)
local bd=ca[ac]if(bd==nil)then bd=cb(ac)end;bd.blit(bc,cc,dc,_d,ad)end,setSize=function(ac,bc)
_b=ac;ab=bc;for cc,dc in pairs(ca)do dc.setSize(ac,bc)end end,getFrame=function(ac)if(
ca[ac]~=nil)then return ca[ac].getFrame()end end,getFrameObjects=function()return
ca end,getFrames=function()local ac={}for bc,cc in pairs(ca)do local dc=cc.getFrame()
table.insert(ac,dc)end;return ac end,getFrameObject=function(ac)return
ca[ac]end,addFrame=function(ac)local bc=aa()if(#ca<=1)then
if(da.animated==nil)then da.animated=true end
if(da.secondsPerFrame==nil)then da.secondsPerFrame=0.2 end end;cb(ac)return bc end,removeFrame=function(ac)
db(ac)
if(#ca<=1)then if(da.animated==nil)then da.animated=true end;if
(da.secondsPerFrame==nil)then da.secondsPerFrame=0.2 end end end,moveFrame=_c,setFrameData=function(ac,bc,cc)
if(
ca[ac]~=nil)then ca[ac].setFrameData(bc,cc)end end,getFrameData=function(ac,bc)return ca[ac]~=nil and
ca[ac].getFrameData(bc)end,getSize=function()return
_b,ab end,setAnimation=function(ac)da.animation=ac end,setMetadata=function(ac,bc)if(bc~=nil)then da[ac]=bc else if(
type(ac)=="table")then da=ac end end end,getMetadata=function(ac)return
ac~=nil and da[ac]or da end,createBimg=function()
local ac={}
for bc,cc in pairs(ca)do local dc=cc.getFrame()table.insert(ac,dc)end;for bc,cc in pairs(da)do ac[bc]=cc end;ac.width=_b;ac.height=ab;return ac end}
if(ba~=nil)then for ac,bc in pairs(ba)do
if(type(ac)=="string")then da[ac]=bc else cb(ac,bc)end end
if
(da.width==nil)or(da.height==nil)then
for ac,bc in pairs(ca)do local cc,dc=bc.getSize()if(cc>_b)then cc=_b end;if(dc>ab)then dc=ab end end;bb.updateSize(_b,ab,true)end else cb(1)end;return bb end
end; 
project['libraries']['images'] = function(...)local ab,bb=string.sub,math.floor;local function cb(ad)return
{[1]={{},{},paintutils.loadImage(ad)}},"bimg"end;local function db(ad)return
paintutils.loadImage(ad),"nfp"end
local function _c(ad)
local bd=fs.open(ad,"rb")local cd=textutils.unserialize(bd.readAll())
bd.close()if(cd~=nil)then return cd,"bimg"end end;local function ac(ad)end;local function bc(ad)end;local function cc(ad,bd)
if(bd==nil)then if(ad:find(".bimg"))then return _c(ad)elseif
(ad:find(".bbf"))then return ac(ad)else return db(ad)end end end
local function dc(ad,bd)if(
bd==nil)then
if(ad:find(".bimg"))then return _c(ad)elseif(ad:find(".bbf"))then return bc(ad)else return cb(ad)end end end
local function _d(ad,bd,cd)
local dd,__a=ad.width or#ad[1][1][1],ad.height or#ad[1]local a_a={}
for b_a,c_a in pairs(ad)do
if(type(b_a)=="number")then local d_a={}
for y=1,cd do local _aa,aaa,baa="","",""
local caa=bb(y/cd*__a+0.5)
if(c_a[caa]~=nil)then
for x=1,bd do local daa=bb(x/bd*dd+0.5)_aa=_aa..
ab(c_a[caa][1],daa,daa)
aaa=aaa..ab(c_a[caa][2],daa,daa)baa=baa..ab(c_a[caa][3],daa,daa)end;table.insert(d_a,{_aa,aaa,baa})end end;table.insert(a_a,b_a,d_a)else a_a[b_a]=c_a end end;a_a.width=bd;a_a.height=cd;return a_a end
return{loadNFP=db,loadBIMG=_c,loadImage=cc,resizeBIMG=_d,loadImageAsBimg=dc}
end; 
project['libraries']['layout'] = function(...)
local function c(_a)local aa={}aa.___value=nil;aa.___name=_a;aa.___children={}aa.___props={}function aa:value()return
self.___value end
function aa:setValue(ba)self.___value=ba end;function aa:name()return self.___name end
function aa:setName(ba)self.___name=ba end;function aa:children()return self.___children end;function aa:numChildren()return
#self.___children end
function aa:addChild(ba)
if self[ba:name()]~=nil then
if
type(self[ba:name()].name)=="function"then local ca={}
table.insert(ca,self[ba:name()])self[ba:name()]=ca end;table.insert(self[ba:name()],ba)else
self[ba:name()]=ba end;table.insert(self.___children,ba)end;function aa:properties()return self.___props end;function aa:numProperties()
return#self.___props end
function aa:addProperty(ba,ca)local da="@"..ba
if self[da]~=nil then if
type(self[da])=="string"then local _b={}table.insert(_b,self[da])
self[da]=_b end
table.insert(self[da],ca)else self[da]=ca end
table.insert(self.___props,{name=ba,value=self[ba]})end;return aa end;local d={}
function d:ToXmlString(_a)_a=string.gsub(_a,"&","&amp;")
_a=string.gsub(_a,"<","&lt;")_a=string.gsub(_a,">","&gt;")
_a=string.gsub(_a,"\"","&quot;")
_a=string.gsub(_a,"([^%w%&%;%p%\t% ])",function(aa)
return string.format("&#x%X;",string.byte(aa))end)return _a end
function d:FromXmlString(_a)
_a=string.gsub(_a,"&#x([%x]+)%;",function(aa)
return string.char(tonumber(aa,16))end)
_a=string.gsub(_a,"&#([0-9]+)%;",function(aa)return string.char(tonumber(aa,10))end)_a=string.gsub(_a,"&quot;","\"")
_a=string.gsub(_a,"&apos;","'")_a=string.gsub(_a,"&gt;",">")
_a=string.gsub(_a,"&lt;","<")_a=string.gsub(_a,"&amp;","&")return _a end;function d:ParseArgs(_a,aa)
string.gsub(aa,"(%w+)=([\"'])(.-)%2",function(ba,ca,da)
_a:addProperty(ba,self:FromXmlString(da))end)end
function d:ParseXmlText(_a)
local aa={}local ba=c()table.insert(aa,ba)local ca,da,_b,ab,bb;local cb,db=1,1
while true do
ca,db,da,_b,ab,bb=string.find(_a,"<(%/?)([%w_:]+)(.-)(%/?)>",cb)if not ca then break end;local ac=string.sub(_a,cb,ca-1)
if not
string.find(ac,"^%s*$")then
local bc=(ba:value()or"")..self:FromXmlString(ac)aa[#aa]:setValue(bc)end
if bb=="/"then local bc=c(_b)self:ParseArgs(bc,ab)ba:addChild(bc)elseif
da==""then local bc=c(_b)self:ParseArgs(bc,ab)table.insert(aa,bc)
ba=bc else local bc=table.remove(aa)ba=aa[#aa]if#aa<1 then
error("XmlParser: nothing to close with ".._b)end;if bc:name()~=_b then
error("XmlParser: trying to close "..bc.name..
" with ".._b)end;ba:addChild(bc)end;cb=db+1 end;local _c=string.sub(_a,cb)if#aa>1 then
error("XmlParser: unclosed "..aa[#aa]:name())end;return ba end
function d:loadFile(_a,aa)if not aa then aa=system.ResourceDirectory end
local ba=system.pathForFile(_a,aa)local ca,da=io.open(ba,"r")
if ca and not da then local _b=ca:read("*a")
io.close(ca)return self:ParseXmlText(_b),nil else print(da)return nil end end;return d
end; 
project['libraries']['module'] = function(...)return
function(a)local b,c=pcall(require,a)return b and c or nil end
end; 
project['libraries']['process'] = function(...)local _a={}local aa={}local ba=0
local ca=dofile("rom/modules/main/cc/require.lua").make
function aa:new(da,_b,ab,...)local bb={...}
local cb=setmetatable({path=da},{__index=self})cb.window=_b;_b.current=term.current;_b.redirect=term.redirect
cb.processId=ba
if(type(da)=="string")then
cb.coroutine=coroutine.create(function()
local db=shell.resolveProgram(da)local _c=setmetatable(ab,{__index=_ENV})_c.shell=shell
_c.basaltProgram=true;_c.arg={[0]=da,table.unpack(bb)}
_c.require,_c.package=ca(_c,fs.getDir(db))
if(fs.exists(db))then local ac=fs.open(db,"r")local bc=ac.readAll()
ac.close()local cc=load(bc,da,"bt",_c)if(cc~=nil)then return cc()end end end)elseif(type(da)=="function")then
cb.coroutine=coroutine.create(function()
da(table.unpack(bb))end)else return end;_a[ba]=cb;ba=ba+1;return cb end
function aa:resume(da,...)local _b=term.current()term.redirect(self.window)
if(
self.filter~=nil)then if(da~=self.filter)then return end;self.filter=nil end;local ab,bb=coroutine.resume(self.coroutine,da,...)if ab then
self.filter=bb else printError(bb)end;term.redirect(_b)
return ab,bb end
function aa:isDead()
if(self.coroutine~=nil)then
if
(coroutine.status(self.coroutine)=="dead")then table.remove(_a,self.processId)return true end else return true end;return false end
function aa:getStatus()if(self.coroutine~=nil)then
return coroutine.status(self.coroutine)end;return nil end
function aa:start()coroutine.resume(self.coroutine)end;return aa
end; 
project['libraries']['tHex'] = function(...)
return
{[colors.white]="0",[colors.orange]="1",[colors.magenta]="2",[colors.lightBlue]="3",[colors.yellow]="4",[colors.lime]="5",[colors.pink]="6",[colors.gray]="7",[colors.lightGray]="8",[colors.cyan]="9",[colors.purple]="a",[colors.blue]="b",[colors.brown]="c",[colors.green]="d",[colors.red]="e",[colors.black]="f"}
end; 
project['libraries']['utils'] = function(...)local _b,ab=string.sub,string.find
local function bb(dc,_d)local ad={}
if dc==""or _d==""then return ad end;local bd=1;local cd,dd=ab(dc,_d,bd)while cd do
table.insert(ad,_b(dc,bd,cd-1))bd=dd+1;cd,dd=ab(dc,_d,bd)end
table.insert(ad,_b(dc,bd))return ad end
local cb={[0]={8,4,3,6,5},{4,14,8,7},{6,10,8,7},{9,11,8,0},{1,14,8,0},{13,12,8,0},{2,10,8,0},{15,8,10,11,12,14},{0,7,1,9,2,13},{3,11,8,7},{2,6,7,15},{9,3,7,15},{13,5,7,15},{5,12,8,7},{1,4,7,15},{7,10,11,12,14}}local db,_c,ac={},{},{}for i=0,15 do _c[2 ^i]=i end
do local dc="0123456789abcdef"
for i=1,16 do db[dc:sub(i,i)]=
i-1;db[i-1]=dc:sub(i,i)
ac[dc:sub(i,i)]=2 ^ (i-1)ac[2 ^ (i-1)]=dc:sub(i,i)local _d=cb[i-1]for i=1,#_d do
_d[i]=2 ^_d[i]end end end
local function bc(dc)local _d=cb[_c[dc[#dc][1] ] ]
for j=1,#_d do local ad=_d[j]for i=1,#dc-1 do if
dc[i][1]==ad then return i end end end;return 1 end
local function cc(dc,_d)
if not _d then local bd={}_d={}for i=1,6 do local cd=dc[i]local dd=_d[cd]
_d[cd],bd[i]=dd and(dd+1)or 1,cd end;dc=bd end;local ad={}for bd,cd in pairs(_d)do ad[#ad+1]={bd,cd}end
if#ad>1 then
while#ad>2 do
table.sort(ad,function(b_a,c_a)return
b_a[2]>c_a[2]end)local cd,dd=bc(ad),#ad;local __a,a_a=ad[dd][1],ad[cd][1]
for i=1,6 do if dc[i]==__a then
dc[i]=a_a;ad[cd][2]=ad[cd][2]+1 end end;ad[dd]=nil end;local bd=128
for i=1,#dc-1 do if dc[i]~=dc[6]then bd=bd+2 ^ (i-1)end end;return string.char(bd),
ac[ad[1][1]==dc[6]and ad[2][1]or ad[1][1] ],ac[dc[6] ]else
return"\128",ac[dc[1] ],ac[dc[1] ]end end
return
{getTextHorizontalAlign=function(dc,_d,ad,bd)dc=_b(dc,1,_d)local cd=_d-string.len(dc)
if(ad=="right")then dc=string.rep(
bd or" ",cd)..dc elseif(ad=="center")then
dc=string.rep(bd or" ",math.floor(
cd/2))..dc..
string.rep(bd or" ",math.floor(cd/2))
dc=dc.. (string.len(dc)<_d and(bd or" ")or"")else dc=dc..string.rep(bd or" ",cd)end;return dc end,getTextVerticalAlign=function(dc,_d)
local ad=0
if(_d=="center")then ad=math.ceil(dc/2)if(ad<1)then ad=1 end end;if(_d=="bottom")then ad=dc end;if(ad<1)then ad=1 end;return ad end,rpairs=function(dc)return function(_d,ad)ad=
ad-1;if ad~=0 then return ad,_d[ad]end end,dc,
#dc+1 end,tableCount=function(dc)
local _d=0;if(dc~=nil)then for ad,bd in pairs(dc)do _d=_d+1 end end;return _d end,splitString=bb,createText=function(dc,_d)
local ad=bb(dc,"\n")local bd={}
for cd,dd in pairs(ad)do if(#dd==0)then table.insert(bd,"")end
while
#dd>_d do local __a=ab(reverse(_b(dd,1,_d))," ")if not __a then __a=_d else __a=
_d-__a+1 end;local a_a=_b(dd,1,__a)
table.insert(bd,a_a)dd=_b(dd,__a+1)end;if#dd>0 then table.insert(bd,dd)end end;return bd end,getValueFromXML=function(dc,_d)
local ad;if(type(_d)~="table")then return end;if(_d[dc]~=nil)then
if
(type(_d[dc])=="table")then if(_d[dc].value~=nil)then ad=_d[dc]:value()end end end;if(ad==nil)then
ad=_d["@"..dc]end;if(ad=="true")then ad=true elseif(ad=="false")then ad=false elseif(tonumber(ad)~=nil)then
ad=tonumber(ad)end;return ad end,numberFromString=function(dc)return load(
"return "..dc)()end,uuid=function()
local dc=math.random
local function _d()local ad='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'return
string.gsub(ad,'[xy]',function(bd)local cd=
(bd=='x')and dc(0,0xf)or dc(8,0xb)
return string.format('%x',cd)end)end;return _d()end,array=function(dc,_d)return
load(
"return {"..
("nil,"):rep(dc).. ("[0]=nil,"):rep(_d).."}")()end,shrink=function(dc,_d)local ad,bd,cd,dd={{},{},{}},0,
#dc+#dc%3,_d or colours.black;for i=1,#dc do if#dc[i]>
bd then bd=#dc[i]end end
for y=0,cd-1,3 do
local __a,a_a,b_a,c_a={},{},{},1
for x=0,bd-1,2 do local d_a,_aa={},{}
for yy=1,3 do
for xx=1,2 do
d_a[#d_a+1]=(dc[y+yy]and dc[y+yy][x+xx])and
(dc[y+
yy][x+xx]==0 and dd or dc[y+yy][x+xx])or dd;_aa[d_a[#d_a] ]=
_aa[d_a[#d_a] ]and(_aa[d_a[#d_a] ]+1)or 1 end end;__a[c_a],a_a[c_a],b_a[c_a]=cc(d_a,_aa)c_a=c_a+1 end
ad[1][#ad[1]+1],ad[2][#ad[2]+1],ad[3][#ad[3]+1]=table.concat(__a),table.concat(a_a),table.concat(b_a)end;ad.width,ad.height=#ad[1][1],#ad[1]return ad end}
end; 
project['default']['Frame'] = function(...)local _c=require("module")local ac=require("Object")
local bc=require("loadObjects")local cc=require("basaltDraw")local dc=require("utils")
local _d=_c("layout")local ad=_c("basaltMon")local bd=dc.uuid;local cd=dc.rpairs
local dd=dc.getValueFromXML;local __a=dc.tableCount;local a_a,b_a,c_a=string.sub,math.min,math.max
return
function(d_a,_aa,aaa,baa)
local caa=ac(d_a)local daa="Frame"local _ba={}local aba={}local bba={}local cba={}local dba={}local _ca={}local aca={}local bca={}local cca=0;local dca=
aaa or term.current()local _da=""local ada=false;local bda=false
local cda=false;local dda=0;local __b=0;local a_b=false;local b_b=0;local c_b=false;local d_b=false;local _ab=""local aab=false;local bab=false
local cab;local dab;local _bb=true;local abb=true;local bbb=false;local cbb={}local dbb={}caa:setZIndex(10)
local _cb=cc(dca)local acb=false;local bcb=1;local ccb=1;local dcb=colors.white;local _db,adb=0,0;local bdb={}local function cdb(ccc,dcc)if(dcc~=nil)then
dcc:setValuesByXMLData(ccc)end end
local function ddb(ccc,dcc,_dc)
if(ccc~=nil)then if(
ccc.properties~=nil)then ccc={ccc}end
for adc,bdc in pairs(ccc)do
local cdc=dcc(_dc,bdc["@id"]or bd())table.insert(bdb,cdc)cdb(bdc,cdc)end end end
local function __c(ccc)if(type(ccc)~="string")then ccc=ccc.name end;for dcc,_dc in pairs(_ba)do
for adc,bdc in
pairs(_dc)do if(bdc:getName()==ccc)then return bdc end end end end
local function a_c(ccc)local dcc=__c(ccc)if(dcc~=nil)then return dcc end
for _dc,adc in pairs(_ba)do
for bdc,cdc in pairs(adc)do if(
cdc:getType()=="Frame")then local ddc=cdc:getDeepObject(ccc)
if(ddc~=nil)then return ddc end end end end end
local function b_c(ccc)local dcc=ccc:getZIndex()if(__c(ccc.name)~=nil)then return end
if(
_ba[dcc]==nil)then
for x=1,#aba+1 do
if(aba[x]~=nil)then if(dcc==aba[x])then break end;if(dcc>aba[x])then
table.insert(aba,x,dcc)break end else table.insert(aba,dcc)end end;if(#aba<=0)then table.insert(aba,dcc)end;_ba[dcc]={}end;ccc.parent=bba;if(ccc.init~=nil)then ccc:init()end
table.insert(_ba[dcc],ccc)return ccc end
local function c_c(ccc,dcc)
for _dc,adc in pairs(cba)do
for bdc,cdc in pairs(adc)do
for ddc,__d in pairs(cdc)do
if(__d==dcc)then
table.remove(cba[_dc][bdc],ddc)if(ccc.parent~=nil)then if(__a(cba[_dc])<=0)then
ccc.parent:removeEvent(_dc,ccc)end end end end end end end
local function d_c(ccc,dcc)
for _dc,adc in pairs(_ba)do
for bdc,cdc in pairs(adc)do
if(type(dcc)=="string")then
if(cdc:getName()==dcc)then
table.remove(_ba[_dc],bdc)c_c(bba,cdc)ccc:updateDraw()return true end else if(cdc==dcc)then table.remove(_ba[_dc],bdc)c_c(bba,cdc)
ccc:updateDraw()return true end end end end;return false end;local function _ac(ccc,dcc,_dc)
for adc,bdc in pairs(cba[dcc])do for cdc,ddc in pairs(bdc)do
if(ddc:getName()==_dc)then return ddc end end end end
local function aac(ccc,dcc,_dc)
local adc=_dc:getZIndex()if(cba[dcc]==nil)then cba[dcc]={}end;if(dba[dcc]==nil)then
dba[dcc]={}end
if(_ac(ccc,dcc,_dc.name)~=nil)then return end
if(ccc.parent~=nil)then ccc.parent:addEvent(dcc,ccc)end;cbb[dcc]=true
if(cba[dcc][adc]==nil)then
for x=1,#dba[dcc]+1 do
if
(dba[dcc][x]~=nil)then if(adc==dba[dcc][x])then break end;if(adc>dba[dcc][x])then
table.insert(dba[dcc],x,adc)break end else
table.insert(dba[dcc],adc)end end
if(#dba[dcc]<=0)then table.insert(dba[dcc],adc)end;cba[dcc][adc]={}end;table.insert(cba[dcc][adc],_dc)return _dc end
local function bac(ccc,dcc,_dc)
if(cba[dcc]~=nil)then
for adc,bdc in pairs(cba[dcc])do
for cdc,ddc in pairs(bdc)do
if(ddc==_dc)then
table.remove(cba[dcc][adc],cdc)
if(#cba[dcc][adc]<=0)then cba[dcc][adc]=nil
if(ccc.parent~=nil)then if(
__a(cba[dcc])<=0)then cbb[dcc]=false
ccc.parent:removeEvent(dcc,ccc)end end end;return true end end end end;return false end;local cac=math
local function dac(ccc)
local dcc,_dc=pcall(load("return "..ccc,"",nil,{math=cac}))if not(dcc)then
error(ccc.." is not a valid dynamic code")end;return _dc end
local function _bc(ccc,dcc,_dc)for adc,bdc in pairs(bca)do
if(bdc[2]==_dc)and(bdc[4]==dcc)then return bdc end end;cca=cca+1
bca[cca]={0,_dc,{},dcc,cca}return bca[cca]end
local function abc(ccc,dcc)local _dc={}local adc={}for bdc in dcc:gmatch("%a+%.x")do local cdc=bdc:gsub("%.x","")
if
(cdc~="self")and(cdc~="parent")then table.insert(_dc,cdc)end end
for bdc in
dcc:gmatch("%w+%.y")do local cdc=bdc:gsub("%.y","")if(cdc~="self")and(cdc~="parent")then
table.insert(_dc,cdc)end end;for bdc in dcc:gmatch("%a+%.w")do local cdc=bdc:gsub("%.w","")
if(cdc~="self")and
(cdc~="parent")then table.insert(_dc,cdc)end end
for bdc in
dcc:gmatch("%a+%.h")do local cdc=bdc:gsub("%.h","")if(cdc~="self")and(cdc~="parent")then
table.insert(_dc,cdc)end end
for bdc,cdc in pairs(_dc)do adc[cdc]=__c(cdc)if(adc[cdc]==nil)then
error("Dynamic Values - unable to find object "..cdc)end end;adc["self"]=ccc;adc["parent"]=ccc:getParent()return adc end
local function bbc(ccc,dcc)local _dc=ccc;for adc in ccc:gmatch("%w+%.x")do
_dc=_dc:gsub(adc,dcc[adc:gsub("%.x","")]:getX())end;for adc in ccc:gmatch("%w+%.y")do
_dc=_dc:gsub(adc,dcc[adc:gsub("%.y","")]:getY())end;for adc in ccc:gmatch("%w+%.w")do
_dc=_dc:gsub(adc,dcc[adc:gsub("%.w","")]:getWidth())end;for adc in ccc:gmatch("%w+%.h")do
_dc=_dc:gsub(adc,dcc[adc:gsub("%.h","")]:getHeight())end;return _dc end
local function cbc(ccc)
if(#bca>0)then
for n=1,cca do
if(bca[n]~=nil)then local dcc;if(#bca[n][3]<=0)then
bca[n][3]=abc(bca[n][4],bca[n][2])end
dcc=bbc(bca[n][2],bca[n][3])bca[n][1]=dac(dcc)if(bca[n][4]:getType()=="Frame")then
bca[n][4]:recalculateDynamicValues()end end end
for dcc,_dc in pairs(aba)do
if(_ba[_dc]~=nil)then
for adc,bdc in pairs(_ba[_dc])do
if
(baa.getDynamicValueEventSetting())then if(bdc.eventHandler~=nil)then
bdc:eventHandler("basalt_dynamicvalue",ccc)end end;if(bdc.customEventHandler~=nil)then
bdc:customEventHandler("basalt_resize",ccc)end end end end end end;local function dbc(ccc)return bca[ccc][1]end
local function _cc(ccc)local dcc=0
for _dc,adc in pairs(_ba)do
for bdc,cdc in pairs(adc)do
if(
cdc.getHeight~=nil)and(cdc.getY~=nil)then
if
(cdc:getType()=="Dropdown")then local ddc,__d=cdc:getHeight(),cdc:getY()
local a_d,b_d=cdc:getDropdownSize()ddc=ddc+b_d-1
if(ddc+__d-ccc:getHeight()>=dcc)then dcc=c_a(ddc+
__d-ccc:getHeight(),0)end else local ddc,__d=cdc:getHeight(),cdc:getY()if(
ddc+__d-ccc:getHeight()>=dcc)then
dcc=c_a(ddc+__d-ccc:getHeight(),0)end end end end end;return dcc end
local function acc(ccc)local dcc=0
for _dc,adc in pairs(_ba)do
for bdc,cdc in pairs(adc)do
if
(cdc.getWidth~=nil)and(cdc.getX~=nil)then local ddc,__d=cdc:getWidth(),cdc:getX()if(
ddc+__d-ccc:getWidth()>=dcc)then
dcc=c_a(ddc+__d-ccc:getWidth(),0)end end end end;return dcc end;local function bcc(ccc)if(abb)then b_b=_cc(ccc)end end
bba={barActive=false,barBackground=colors.gray,barTextcolor=colors.black,barText="New Frame",barTextAlign="left",addEvent=aac,removeEvent=bac,removeEvents=c_c,getEvent=_ac,newDynamicValue=_bc,recalculateDynamicValues=cbc,getDynamicValue=dbc,getType=function(ccc)return
daa end,getObjectCount=function(ccc)local dcc=0;for _dc,adc in pairs(_ba)do dcc=dcc+#adc end
return dcc end,getEventCount=function(ccc,dcc)local _dc=0;for adc,bdc in pairs(cba[dcc])do
_dc=_dc+#bdc end;return _dc end,setZIndex=function(ccc,dcc)
caa.setZIndex(ccc,dcc)for _dc,adc in pairs(cbb)do
if(adc)then ccc.parent:addEvent(_dc,ccc)end end;return ccc end,setFocusedObject=function(ccc,dcc)
if(
dab~=dcc)then if(dab~=nil)then
if(__c(dab)~=nil)then dab:loseFocusHandler()end end;if(dcc~=nil)then if(__c(dcc)~=nil)then
dcc:getFocusHandler()end end;dab=dcc end;return ccc end,getVariable=function(ccc,dcc)return
baa.getVariable(dcc)end,setSize=function(ccc,dcc,_dc,adc)
caa.setSize(ccc,dcc,_dc,adc)if(ccc.parent==nil)then _cb=cc(dca)end
for bdc,cdc in pairs(aba)do if(_ba[cdc]~=nil)then
for ddc,__d in
pairs(_ba[cdc])do if(__d.customEventHandler~=nil)then
__d:customEventHandler("basalt_resize",ccc)end end end end;ccc:recalculateDynamicValues()_bb=false;return ccc end,setTheme=function(ccc,dcc,_dc)
if(
type(dcc)=="table")then aca=dcc elseif(type(dcc)=="string")then aca[dcc]=_dc end;ccc:updateDraw()return ccc end,getTheme=function(ccc,dcc)
return
aca[dcc]or(ccc.parent~=nil and ccc.parent:getTheme(dcc)or
baa.getTheme(dcc))end,getThemeColor=function(ccc,dcc)return
dcc~=nil and dbb[dcc]or dbb end,setThemeColor=function(ccc,dcc,...)
if
(ccc.parent==nil)then
if(ccc==baa.getActiveFrame())then
if(type(dcc)=="string")then dbb[dcc]=...
dca.setPaletteColor(
type(dcc)=="number"and dcc or colors[dcc],...)elseif(type(dcc)=="table")then
for _dc,adc in pairs(dcc)do dbb[_dc]=adc
if(type(adc)=="number")then
dca.setPaletteColor(
type(_dc)=="number"and _dc or colors[_dc],adc)else local bdc,cdc,ddc=table.unpack(adc)
dca.setPaletteColor(
type(_dc)=="number"and _dc or colors[_dc],bdc,cdc,ddc)end end end end end;return ccc end,setPosition=function(ccc,dcc,_dc,adc)
caa.setPosition(ccc,dcc,_dc,adc)ccc:recalculateDynamicValues()return ccc end,getBasaltInstance=function(ccc)return
baa end,setOffset=function(ccc,dcc,_dc)
_db=dcc~=nil and
cac.floor(dcc<0 and cac.abs(dcc)or-dcc)or _db
adb=_dc~=nil and
cac.floor(_dc<0 and cac.abs(_dc)or-_dc)or adb;ccc:updateDraw()return ccc end,getOffsetInternal=function(ccc)return
_db,adb end,getOffset=function(ccc)return _db<0 and cac.abs(_db)or-_db,adb<0 and
cac.abs(adb)or-adb end,removeFocusedObject=function(ccc)if(
dab~=nil)then
if(__c(dab)~=nil)then dab:loseFocusHandler()end end;dab=nil;return ccc end,getFocusedObject=function(ccc)return
dab end,setCursor=function(ccc,dcc,_dc,adc,bdc)
if(ccc.parent~=nil)then
local cdc,ddc=ccc:getAnchorPosition()
ccc.parent:setCursor(dcc or false,(_dc or 0)+cdc-1,(adc or 0)+ddc-1,
bdc or dcb)else
local cdc,ddc=ccc:getAbsolutePosition(ccc:getAnchorPosition(ccc:getX(),ccc:getY(),true))acb=dcc or false;if(_dc~=nil)then bcb=cdc+_dc-1 end;if(adc~=nil)then ccb=ddc+
adc-1 end;dcb=bdc or dcb;if(acb)then
dca.setTextColor(dcb)dca.setCursorPos(bcb,ccb)dca.setCursorBlink(acb)else
dca.setCursorBlink(false)end end;return ccc end,setMovable=function(ccc,dcc)
if(
ccc.parent~=nil)then aab=dcc or not aab
ccc.parent:addEvent("mouse_click",ccc)cbb["mouse_click"]=true
ccc.parent:addEvent("mouse_up",ccc)cbb["mouse_up"]=true
ccc.parent:addEvent("mouse_drag",ccc)cbb["mouse_drag"]=true end;return ccc end,setScrollable=function(ccc,dcc)a_b=(
dcc or dcc==nil)and true or false
if(
ccc.parent~=nil)then ccc.parent:addEvent("mouse_scroll",ccc)end;cbb["mouse_scroll"]=true;return ccc end,setScrollAmount=function(ccc,dcc)b_b=
dcc or b_b;abb=false;return ccc end,getScrollAmount=function(ccc)return abb and bcc(ccc)or
b_b end,getCalculatedVerticalScroll=_cc,getCalculatedHorizontalScroll=acc,show=function(ccc)caa.show(ccc)
if(
ccc.parent==nil)then baa.setActiveFrame(ccc)
for dcc,_dc in pairs(colors)do if
(type(_dc)=="number")then
dca.setPaletteColor(_dc,colors.packRGB(term.nativePaletteColor((_dc))))end end
for dcc,_dc in pairs(dbb)do
if(type(_dc)=="number")then
dca.setPaletteColor(
type(dcc)=="number"and dcc or colors[dcc],_dc)else local adc,bdc,cdc=table.unpack(_dc)
dca.setPaletteColor(
type(dcc)=="number"and dcc or colors[dcc],adc,bdc,cdc)end end
if(ada)and not(bda)then baa.setMonitorFrame(_da,ccc)elseif(bda)then
baa.setMonitorFrame(ccc:getName(),ccc,_da)else baa.setMainFrame(ccc)end end;return ccc end,hide=function(ccc)
caa.hide(ccc)
if(ccc.parent==nil)then if(activeFrame==ccc)then activeFrame=nil end
if(ada)and
not(bda)then if(baa.getMonitorFrame(_da)==ccc)then
baa.setActiveFrame(nil)end elseif(bda)then
if(
baa.getMonitorFrame(ccc:getName())==ccc)then baa.setActiveFrame(nil)end else
if(baa.getMainFrame()==ccc)then baa.setMainFrame(nil)end end end;return ccc end,addLayout=function(ccc,dcc)
if(
dcc~=nil)then
if(fs.exists(dcc))then local _dc=fs.open(dcc,"r")
local adc=_d:ParseXmlText(_dc.readAll())_dc.close()bdb={}ccc:setValuesByXMLData(adc)end end;return ccc end,getLastLayout=function(ccc)return
bdb end,addLayoutFromString=function(ccc,dcc)if(dcc~=nil)then local _dc=_d:ParseXmlText(dcc)
ccc:setValuesByXMLData(_dc)end;return ccc end,setValuesByXMLData=function(ccc,dcc)
caa.setValuesByXMLData(ccc,dcc)if(dd("movable",dcc)~=nil)then if(dd("movable",dcc))then
ccc:setMovable(true)end end;if(
dd("scrollable",dcc)~=nil)then
if(dd("scrollable",dcc))then ccc:setScrollable(true)end end;if
(dd("monitor",dcc)~=nil)then
ccc:setMonitor(dd("monitor",dcc)):show()end;if(dd("mirror",dcc)~=nil)then
ccc:setMirror(dd("mirror",dcc))end
if(dd("bar",dcc)~=nil)then if(dd("bar",dcc))then
ccc:showBar(true)else ccc:showBar(false)end end
if(dd("barText",dcc)~=nil)then ccc.barText=dd("barText",dcc)end;if(dd("barBG",dcc)~=nil)then
ccc.barBackground=colors[dd("barBG",dcc)]end;if(dd("barFG",dcc)~=nil)then
ccc.barTextcolor=colors[dd("barFG",dcc)]end;if(dd("barAlign",dcc)~=nil)then
ccc.barTextAlign=dd("barAlign",dcc)end;if(dd("layout",dcc)~=nil)then
ccc:addLayout(dd("layout",dcc))end;if(dd("xOffset",dcc)~=nil)then
ccc:setOffset(dd("xOffset",dcc),adb)end;if(dd("yOffset",dcc)~=nil)then
ccc:setOffset(adb,dd("yOffset",dcc))end;if(dd("scrollAmount",dcc)~=nil)then
ccc:setScrollAmount(dd("scrollAmount",dcc))end;local _dc=dcc:children()
for adc,bdc in
pairs(_dc)do if(bdc.___name~="animation")then
local cdc=bdc.___name:gsub("^%l",string.upper)
if(bc[cdc]~=nil)then ddb(bdc,ccc["add"..cdc],ccc)end end end;ddb(dcc["frame"],ccc.addFrame,ccc)
ddb(dcc["animation"],ccc.addAnimation,ccc)return ccc end,showBar=function(ccc,dcc)ccc.barActive=
dcc or not ccc.barActive;ccc:updateDraw()
return ccc end,setBar=function(ccc,dcc,_dc,adc)ccc.barText=dcc or""ccc.barBackground=
_dc or ccc.barBackground
ccc.barTextcolor=adc or ccc.barTextcolor;ccc:updateDraw()return ccc end,setBarTextAlign=function(ccc,dcc)ccc.barTextAlign=
dcc or"left"ccc:updateDraw()return ccc end,setMirror=function(ccc,dcc)if(
ccc.parent~=nil)then
error("Frame has to be a base frame in order to attach a mirror.")end;_ab=dcc;if(mirror~=nil)then
_cb.setMirror(mirror)end;c_b=true;return ccc end,removeMirror=function(ccc)mirror=
nil;c_b=false;_cb.setMirror(nil)return ccc end,setMonitorScale=function(ccc,dcc)if
(ada)then dca.setTextScale(dcc)end;return ccc end,setMonitor=function(ccc,dcc,_dc)
if(
dcc~=nil)and(dcc~=false)then
if(type(dcc)=="string")then
if(
peripheral.getType(dcc)=="monitor")then dca=peripheral.wrap(dcc)cda=true end
if(ccc.parent~=nil)then ccc.parent:removeObject(ccc)end;ada=true;baa.setMonitorFrame(dcc,ccc)elseif(type(dcc)=="table")then
dca=ad(dcc)cda=true;ada=true;bda=true
baa.setMonitorFrame(ccc:getName(),ccc,true)end else dca=parentTerminal;ada=false;bda=false
if(type(_da)=="string")then
if(
baa.getMonitorFrame(_da)==ccc)then baa.setMonitorFrame(_da,nil)end else
if(baa.getMonitorFrame(ccc:getName())==ccc)then baa.setMonitorFrame(ccc:getName(),
nil)end end end;if(_dc~=nil)then dca.setTextScale(_dc)end;_cb=cc(dca)
ccc:setSize(dca.getSize())_bb=true;_da=dcc or nil;ccc:updateDraw()return ccc end,loseFocusHandler=function(ccc)
caa.loseFocusHandler(ccc)if(dab~=nil)then dab:loseFocusHandler()dab=nil end end,getFocusHandler=function(ccc)
caa.getFocusHandler(ccc)
if(ccc.parent~=nil)then
if(aab)then ccc.parent:removeEvents(ccc)
ccc.parent:removeObject(ccc)ccc.parent:addObject(ccc)for dcc,_dc in pairs(cbb)do if(_dc)then
ccc.parent:addEvent(dcc,ccc)end end
ccc:updateDraw()end end;if(dab~=nil)then dab:getFocusHandler()end end,eventHandler=function(ccc,dcc,...)
caa.eventHandler(ccc,dcc,...)
if(cba["other_event"]~=nil)then
for _dc,adc in ipairs(dba["other_event"])do
if(
cba["other_event"][adc]~=nil)then for bdc,cdc in cd(cba["other_event"][adc])do
if
(cdc.eventHandler~=nil)then if(cdc:eventHandler(dcc,...))then return true end end end end end end;if(_bb)and not(ada)then
if(ccc.parent==nil)then if(dcc=="term_resize")then
ccc:setSize(dca.getSize())_bb=true end end end
if(ada)then
if(_bb)then
if
(dcc=="monitor_resize")then
if(type(_da)=="string")then ccc:setSize(dca.getSize())elseif(
type(_da)=="table")then
for _dc,adc in pairs(_da)do for bdc,cdc in pairs(adc)do if(p1 ==cdc)then
ccc:setSize(dca.getSize())end end end end;_bb=true;ccc:updateDraw()end end
if(dcc=="peripheral")and(p1 ==_da)then if
(peripheral.getType(_da)=="monitor")then cda=true;dca=peripheral.wrap(_da)_cb=cc(dca)
ccc:updateDraw()end end
if(dcc=="peripheral_detach")and(p1 ==_da)then cda=false end end
if(c_b)then if(peripheral.getType(_ab)=="monitor")then d_b=true
_cb.setMirror(peripheral.wrap(_ab))end;if(dcc=="peripheral_detach")and
(p1 ==_ab)then cda=false end
if
(dcc=="monitor_touch")and(_ab==p1)then ccc:mouseHandler(1,p2,p3,true)end end end,mouseHandler=function(ccc,dcc,_dc,adc,bdc,cdc)
if
(bda)then if(dca.calculateClick~=nil)then
_dc,adc=dca.calculateClick(cdc,_dc,adc)end end
if(caa.mouseHandler(ccc,dcc,_dc,adc))then
if(cba["mouse_click"]~=nil)then
ccc:setCursor(false)
for ddc,__d in ipairs(dba["mouse_click"])do
if
(cba["mouse_click"][__d]~=nil)then for a_d,b_d in cd(cba["mouse_click"][__d])do
if(b_d.mouseHandler~=nil)then if
(b_d:mouseHandler(dcc,_dc,adc))then return true end end end end end end
if(aab)then
local ddc,__d=ccc:getAbsolutePosition(ccc:getAnchorPosition())if
(_dc>=ddc)and(_dc<=ddc+ccc:getWidth()-1)and(adc==__d)then bab=true;dda=ddc-_dc
__b=yOff and 1 or 0 end end;ccc:removeFocusedObject()return true end;return false end,mouseUpHandler=function(ccc,dcc,_dc,adc)if
(bab)then bab=false end
if(caa.mouseUpHandler(ccc,dcc,_dc,adc))then
if
(cba["mouse_up"]~=nil)then
for bdc,cdc in ipairs(dba["mouse_up"])do
if(cba["mouse_up"][cdc]~=nil)then
for ddc,__d in
cd(cba["mouse_up"][cdc])do if(__d.mouseUpHandler~=nil)then
if(__d:mouseUpHandler(dcc,_dc,adc))then return true end end end end end end;return true end;return false end,scrollHandler=function(ccc,dcc,_dc,adc)
if
(caa.scrollHandler(ccc,dcc,_dc,adc))then
if(cba["mouse_scroll"]~=nil)then
for cdc,ddc in pairs(dba["mouse_scroll"])do
if(
cba["mouse_scroll"][ddc]~=nil)then
for __d,a_d in cd(cba["mouse_scroll"][ddc])do if(a_d.scrollHandler~=
nil)then
if(a_d:scrollHandler(dcc,_dc,adc))then return true end end end end end end;local bdc=adb
if(a_b)then bcc(ccc)if(dcc>0)or(dcc<0)then
adb=c_a(b_a(adb-dcc,0),-b_b)ccc:updateDraw()end end;if(adb==bdc)then return false end;ccc:removeFocusedObject()
return true end;return false end,hoverHandler=function(ccc,dcc,_dc,adc)
if
(caa.hoverHandler(ccc,dcc,_dc,adc))then
if(cba["mouse_move"]~=nil)then
for bdc,cdc in pairs(dba["mouse_move"])do
if(
cba["mouse_move"][cdc]~=nil)then for ddc,__d in cd(cba["mouse_move"][cdc])do
if
(__d.hoverHandler~=nil)then if(__d:hoverHandler(dcc,_dc,adc))then return true end end end end end end end;return false end,dragHandler=function(ccc,dcc,_dc,adc)
if
(bab)then local bdc,cdc=ccc.parent:getOffsetInternal()bdc=bdc<0 and
cac.abs(bdc)or-bdc;cdc=cdc<0 and cac.abs(cdc)or-
cdc;local ddc=1;local __d=1;if(ccc.parent~=nil)then
ddc,__d=ccc.parent:getAbsolutePosition(ccc.parent:getAnchorPosition())end
ccc:setPosition(
_dc+dda- (ddc-1)+bdc,adc+__b- (__d-1)+cdc)ccc:updateDraw()return true end
if(ccc:isVisible())and(ccc:isEnabled())then
if
(cba["mouse_drag"]~=nil)then
for bdc,cdc in ipairs(dba["mouse_drag"])do
if
(cba["mouse_drag"][cdc]~=nil)then for ddc,__d in cd(cba["mouse_drag"][cdc])do
if(__d.dragHandler~=nil)then if
(__d:dragHandler(dcc,_dc,adc))then return true end end end end end end end;caa.dragHandler(ccc,dcc,_dc,adc)return false end,keyHandler=function(ccc,dcc,_dc)
if
(ccc:isFocused())or(ccc.parent==nil)then
local adc=ccc:getEventSystem():sendEvent("key",ccc,"key",dcc)if(adc==false)then return false end
if(cba["key"]~=nil)then
for bdc,cdc in pairs(dba["key"])do
if(
cba["key"][cdc]~=nil)then
for ddc,__d in cd(cba["key"][cdc])do if(__d.keyHandler~=nil)then if
(__d:keyHandler(dcc,_dc))then return true end end end end end end end;return false end,keyUpHandler=function(ccc,dcc)
if
(ccc:isFocused())or(ccc.parent==nil)then
local _dc=ccc:getEventSystem():sendEvent("key_up",ccc,"key_up",dcc)if(_dc==false)then return false end
if(cba["key_up"]~=nil)then
for adc,bdc in
pairs(dba["key_up"])do
if(cba["key_up"][bdc]~=nil)then for cdc,ddc in cd(cba["key_up"][bdc])do
if(
ddc.keyUpHandler~=nil)then if(ddc:keyUpHandler(dcc))then return true end end end end end end end;return false end,charHandler=function(ccc,dcc)
if
(ccc:isFocused())or(ccc.parent==nil)then
local _dc=ccc:getEventSystem():sendEvent("char",ccc,"char",dcc)if(_dc==false)then return false end
if(cba["char"]~=nil)then
for adc,bdc in
pairs(dba["char"])do
if(cba["char"][bdc]~=nil)then for cdc,ddc in cd(cba["char"][bdc])do
if
(ddc.charHandler~=nil)then if(ddc:charHandler(dcc))then return true end end end end end end end;return false end,setText=function(ccc,dcc,_dc,adc)
local bdc,cdc=ccc:getAnchorPosition()
if(_dc>=1)and(_dc<=ccc:getHeight())then
if(ccc.parent~=nil)then
ccc.parent:setText(c_a(
dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(ccc:getWidth()-
dcc+1,1)))else
_cb.setText(c_a(dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(
ccc:getWidth()-dcc+1,1)))end end end,setBG=function(ccc,dcc,_dc,adc)
local bdc,cdc=ccc:getAnchorPosition()
if(_dc>=1)and(_dc<=ccc:getHeight())then
if(ccc.parent~=nil)then
ccc.parent:setBG(c_a(
dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(ccc:getWidth()-
dcc+1,1)))else
_cb.setBG(c_a(dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(
ccc:getWidth()-dcc+1,1)))end end end,setFG=function(ccc,dcc,_dc,adc)
local bdc,cdc=ccc:getAnchorPosition()
if(_dc>=1)and(_dc<=ccc:getHeight())then
if(ccc.parent~=nil)then
ccc.parent:setFG(c_a(
dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(ccc:getWidth()-
dcc+1,1)))else
_cb.setFG(c_a(dcc+ (bdc-1),bdc),cdc+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(
ccc:getWidth()-dcc+1,1)))end end end,writeText=function(ccc,dcc,_dc,adc,bdc,cdc)
local ddc,__d=ccc:getAnchorPosition()
if(_dc>=1)and(_dc<=ccc:getHeight())then
if(ccc.parent~=nil)then
ccc.parent:writeText(c_a(
dcc+ (ddc-1),ddc),__d+_dc-1,a_a(adc,c_a(1 -dcc+1,1),
ccc:getWidth()-dcc+1),bdc,cdc)else
_cb.writeText(c_a(dcc+ (ddc-1),ddc),__d+_dc-1,a_a(adc,c_a(1 -dcc+1,1),c_a(
ccc:getWidth()-dcc+1,1)),bdc,cdc)end end end,blit=function(ccc,dcc,_dc,adc,bdc,cdc)
local ddc,__d=ccc:getAnchorPosition()
if(_dc>=1)and(_dc<=ccc:getHeight())then
local a_d=ccc:getWidth()
if(ccc.parent~=nil)then
adc=a_a(adc,c_a(1 -dcc+1,1),a_d-dcc+1)bdc=a_a(bdc,c_a(1 -dcc+1,1),a_d-dcc+1)cdc=a_a(cdc,c_a(
1 -dcc+1,1),a_d-dcc+1)
ccc.parent:blit(c_a(
dcc+ (ddc-1),ddc),__d+_dc-1,adc,bdc,cdc)else
adc=a_a(adc,c_a(1 -dcc+1,1),c_a(a_d-dcc+1,1))
bdc=a_a(bdc,c_a(1 -dcc+1,1),c_a(a_d-dcc+1,1))
cdc=a_a(cdc,c_a(1 -dcc+1,1),c_a(a_d-dcc+1,1))
_cb.blit(c_a(dcc+ (ddc-1),ddc),__d+_dc-1,adc,bdc,cdc)end end end,drawBackgroundBox=function(ccc,dcc,_dc,adc,bdc,cdc)
local ddc,__d=ccc:getAnchorPosition()
bdc=(_dc<1 and(
bdc+_dc>ccc:getHeight()and ccc:getHeight()or bdc+_dc-1)or(
bdc+
_dc>ccc:getHeight()and ccc:getHeight()-_dc+1 or bdc))
adc=(dcc<1 and(adc+dcc>ccc:getWidth()and ccc:getWidth()or adc+
dcc-1)or(

adc+dcc>ccc:getWidth()and ccc:getWidth()-dcc+1 or adc))
if(ccc.parent~=nil)then
ccc.parent:drawBackgroundBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,cdc)else
_cb.drawBackgroundBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,cdc)end end,drawTextBox=function(ccc,dcc,_dc,adc,bdc,cdc)
local ddc,__d=ccc:getAnchorPosition()
bdc=(_dc<1 and(
bdc+_dc>ccc:getHeight()and ccc:getHeight()or bdc+_dc-1)or(
bdc+
_dc>ccc:getHeight()and ccc:getHeight()-_dc+1 or bdc))
adc=(dcc<1 and(adc+dcc>ccc:getWidth()and ccc:getWidth()or adc+
dcc-1)or(

adc+dcc>ccc:getWidth()and ccc:getWidth()-dcc+1 or adc))
if(ccc.parent~=nil)then
ccc.parent:drawTextBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,a_a(cdc,1,1))else
_cb.drawTextBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,a_a(cdc,1,1))end end,drawForegroundBox=function(ccc,dcc,_dc,adc,bdc,cdc)
local ddc,__d=ccc:getAnchorPosition()
bdc=(_dc<1 and(
bdc+_dc>ccc:getHeight()and ccc:getHeight()or bdc+_dc-1)or(
bdc+
_dc>ccc:getHeight()and ccc:getHeight()-_dc+1 or bdc))
adc=(dcc<1 and(adc+dcc>ccc:getWidth()and ccc:getWidth()or adc+
dcc-1)or(

adc+dcc>ccc:getWidth()and ccc:getWidth()-dcc+1 or adc))
if(ccc.parent~=nil)then
ccc.parent:drawForegroundBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,cdc)else
_cb.drawForegroundBox(c_a(dcc+ (ddc-1),ddc),c_a(_dc+ (__d-1),__d),adc,bdc,cdc)end end,draw=function(ccc,dcc)if
(ada)and not(cda)then return false end
if(ccc.parent==nil)then if(ccc:getDraw()==
false)then return false end end
if(caa.draw(ccc))then
local _dc,adc=ccc:getAbsolutePosition(ccc:getAnchorPosition())local bdc,cdc=ccc:getAnchorPosition()local ddc,__d=ccc:getSize()
if(
ccc.parent==nil)then
if(ccc.bgColor~=false)then
_cb.drawBackgroundBox(bdc,cdc,ddc,__d,ccc.bgColor)_cb.drawTextBox(bdc,cdc,ddc,__d," ")end;if(ccc.fgColor~=false)then
_cb.drawForegroundBox(bdc,cdc,ddc,__d,ccc.fgColor)end end
if(ccc.barActive)then
if(ccc.parent~=nil)then
ccc.parent:writeText(bdc,cdc,dc.getTextHorizontalAlign(ccc.barText,ddc,ccc.barTextAlign),ccc.barBackground,ccc.barTextcolor)else
_cb.writeText(bdc,cdc,dc.getTextHorizontalAlign(ccc.barText,ddc,ccc.barTextAlign),ccc.barBackground,ccc.barTextcolor)end
if(ccc:getBorder("left"))then
if(ccc.parent~=nil)then
ccc.parent:drawBackgroundBox(bdc-1,cdc,1,1,ccc.barBackground)if(ccc.bgColor~=false)then
ccc.parent:drawBackgroundBox(bdc-1,cdc+1,1,__d-1,ccc.bgColor)end end end
if(ccc:getBorder("top"))then if(ccc.parent~=nil)then
ccc.parent:drawBackgroundBox(bdc-1,cdc-1,ddc+1,1,ccc.barBackground)end end end;for a_d,b_d in cd(aba)do
if(_ba[b_d]~=nil)then for c_d,d_d in pairs(_ba[b_d])do
if(d_d.draw~=nil)then d_d:draw()end end end end end end,updateTerm=function(ccc)if
(ada)and not(cda)then return false end;_cb.update()end,addObject=function(ccc,dcc)return
b_c(dcc)end,removeObject=d_c,getObject=function(ccc,dcc)return __c(dcc)end,getDeepObject=function(ccc,dcc)return a_c(dcc)end,addFrame=function(ccc,dcc)local _dc=baa.newFrame(
dcc or bd(),ccc,nil,baa)return b_c(_dc)end,init=function(ccc)
if
not(bbb)then
if(_aa~=nil)then caa.width,caa.height=_aa:getSize()
ccc:setBackground(_aa:getTheme("FrameBG"))
ccc:setForeground(_aa:getTheme("FrameText"))else caa.width,caa.height=dca.getSize()
ccc:setBackground(baa.getTheme("BasaltBG"))
ccc:setForeground(baa.getTheme("BasaltText"))end;bbb=true end end}
for ccc,dcc in pairs(bc)do bba["add"..ccc]=function(_dc,adc)
return b_c(dcc(adc or bd(),_dc))end end;setmetatable(bba,caa)return bba end
end; 
project['default']['loadObjects'] = function(...)local d={}if(packaged)then
for ba,ca in pairs(getProject("objects"))do d[ba]=ca()end;return d end
local _a=table.pack(...)local aa=fs.getDir(_a[2]or"Basalt")if(aa==nil)then
error("Unable to find directory "..
_a[2].." please report this bug to our discord.")end;for ba,ca in
pairs(fs.list(fs.combine(aa,"objects")))do
if(ca~="example.lua")then local da=ca:gsub(".lua","")d[da]=require(da)end end;return d
end; 
project['default']['Object'] = function(...)local _b=require("basaltEvent")local ab=require("utils")
local bb=require("module")local cb=bb("images")local db=ab.splitString;local _c=ab.numberFromString
local ac=ab.getValueFromXML;local bc,cc=table.unpack,string.sub
return
function(dc)local _d="Object"local ad={}local bd=1;local cd
local dd="topLeft"local __a=false;local a_a=true;local b_a=false;local c_a=false;local d_a=false;local _aa=false
local aaa={left=false,right=false,top=false,bottom=false}local baa=colors.black;local caa=true;local daa=false;local _ba,aba,bba,cba=0,0,0,0;local dba;local _ca;local aca=1;local bca
local cca;local dca=true;local _da=true;local ada={}local bda=_b()
ad={x=1,y=1,width=1,height=1,bgColor=colors.black,bgSymbol=" ",bgSymbolColor=colors.black,fgColor=colors.white,transparentColor=false,name=dc or"Object",parent=
nil,show=function(cda)a_a=true;cda:updateDraw()return cda end,hide=function(cda)a_a=false
cda:updateDraw()return cda end,enable=function(cda)caa=true;return cda end,disable=function(cda)caa=false
return cda end,isEnabled=function(cda)return caa end,generateXMLEventFunction=function(cda,dda,__b)
local a_b=function(b_b)
if(b_b:sub(1,1)=="#")then
local c_b=cda:getBaseFrame():getDeepObject(b_b:sub(2,b_b:len()))
if(c_b~=nil)and(c_b.internalObjetCall~=nil)then dda(cda,function()
c_b:internalObjetCall()end)end else
dda(cda,cda:getBaseFrame():getVariable(b_b))end end;if(type(__b)=="string")then a_b(__b)elseif(type(__b)=="table")then
for b_b,c_b in pairs(__b)do a_b(c_b)end end;return cda end,setValuesByXMLData=function(cda,dda)
local __b=cda:getBaseFrame()if(ac("x",dda)~=nil)then
cda:setPosition(ac("x",dda),cda:getY())end;if(ac("y",dda)~=nil)then
cda:setPosition(cda:getX(),ac("y",dda))end;if(ac("width",dda)~=nil)then
cda:setSize(ac("width",dda),cda.height)end;if(ac("height",dda)~=nil)then
cda:setSize(cda.width,ac("height",dda))end;if(ac("bg",dda)~=nil)then
cda:setBackground(colors[ac("bg",dda)])end;if(ac("fg",dda)~=nil)then
cda:setForeground(colors[ac("fg",dda)])end;if(ac("value",dda)~=nil)then
cda:setValue(colors[ac("value",dda)])end
if(ac("visible",dda)~=nil)then if
(ac("visible",dda))then cda:show()else cda:hide()end end
if(ac("enabled",dda)~=nil)then if(ac("enabled",dda))then cda:enable()else
cda:disable()end end;if(ac("zIndex",dda)~=nil)then
cda:setZIndex(ac("zIndex",dda))end;if(ac("anchor",dda)~=nil)then
cda:setAnchor(ac("anchor",dda))end;if(ac("shadowColor",dda)~=nil)then
cda:setShadow(colors[ac("shadowColor",dda)])end;if(ac("border",dda)~=nil)then
cda:setBorder(colors[ac("border",dda)])end;if(ac("borderLeft",dda)~=nil)then
aaa["left"]=ac("borderLeft",dda)end;if(ac("borderTop",dda)~=nil)then
aaa["top"]=ac("borderTop",dda)end;if(ac("borderRight",dda)~=nil)then
aaa["right"]=ac("borderRight",dda)end;if(ac("borderBottom",dda)~=nil)then
aaa["bottom"]=ac("borderBottom",dda)end;if(ac("borderColor",dda)~=nil)then
cda:setBorder(colors[ac("borderColor",dda)])end;if
(ac("ignoreOffset",dda)~=nil)then
if(ac("ignoreOffset",dda))then cda:ignoreOffset(true)end end;if
(ac("onClick",dda)~=nil)then
cda:generateXMLEventFunction(cda.onClick,ac("onClick",dda))end;if
(ac("onClickUp",dda)~=nil)then
cda:generateXMLEventFunction(cda.onClickUp,ac("onClickUp",dda))end;if
(ac("onScroll",dda)~=nil)then
cda:generateXMLEventFunction(cda.onScroll,ac("onScroll",dda))end;if
(ac("onDrag",dda)~=nil)then
cda:generateXMLEventFunction(cda.onDrag,ac("onDrag",dda))end;if(ac("onHover",dda)~=nil)then
cda:generateXMLEventFunction(cda.onHover,ac("onHover",dda))end;if
(ac("onLeave",dda)~=nil)then
cda:generateXMLEventFunction(cda.onLeave,ac("onLeave",dda))end;if(ac("onKey",dda)~=nil)then
cda:generateXMLEventFunction(cda.onKey,ac("onKey",dda))end;if(ac("onKeyUp",dda)~=nil)then
cda:generateXMLEventFunction(cda.onKeyUp,ac("onKeyUp",dda))end;if
(ac("onChange",dda)~=nil)then
cda:generateXMLEventFunction(cda.onChange,ac("onChange",dda))end;if
(ac("onResize",dda)~=nil)then
cda:generateXMLEventFunction(cda.onResize,ac("onResize",dda))end;if
(ac("onReposition",dda)~=nil)then
cda:generateXMLEventFunction(cda.onReposition,ac("onReposition",dda))end;if
(ac("onEvent",dda)~=nil)then
cda:generateXMLEventFunction(cda.onEvent,ac("onEvent",dda))end;if
(ac("onGetFocus",dda)~=nil)then
cda:generateXMLEventFunction(cda.onGetFocus,ac("onGetFocus",dda))end;if
(ac("onLoseFocus",dda)~=nil)then
cda:generateXMLEventFunction(cda.onLoseFocus,ac("onLoseFocus",dda))end
cda:updateDraw()return cda end,isVisible=function(cda)return
a_a end,setFocus=function(cda)if(cda.parent~=nil)then
cda.parent:setFocusedObject(cda)end;return cda end,setZIndex=function(cda,dda)
bd=dda
if(cda.parent~=nil)then cda.parent:removeObject(cda)
cda.parent:addObject(cda)cda:updateEventHandlers()end;return cda end,updateEventHandlers=function(cda)
for dda,__b in
pairs(ada)do if(__b)then cda.parent:addEvent(dda,cda)end end end,getZIndex=function(cda)return bd end,getType=function(cda)return _d end,getName=function(cda)return
cda.name end,remove=function(cda)if(cda.parent~=nil)then
cda.parent:removeObject(cda)end;cda:updateDraw()return cda end,setParent=function(cda,dda)
if(
dda.getType~=nil and dda:getType()=="Frame")then
cda:remove()dda:addObject(cda)if(cda.draw)then cda:show()end end;return cda end,setValue=function(cda,dda,__b)if(
cd~=dda)then cd=dda;cda:updateDraw()if(__b~=false)then
cda:valueChangedHandler()end end
return cda end,getValue=function(cda)return cd end,getDraw=function(cda)return
_da end,updateDraw=function(cda,dda)_da=dda;if(dda==nil)then _da=true end;if(_da)then if(cda.parent~=nil)then
cda.parent:updateDraw()end end;return cda end,getEventSystem=function(cda)return
bda end,getParent=function(cda)return cda.parent end,setPosition=function(cda,dda,__b,a_b)
if(type(dda)=="number")then cda.x=
a_b and cda:getX()+dda or dda end;if(type(__b)=="number")then
cda.y=a_b and cda:getY()+__b or __b end
if(cda.parent~=nil)then if(type(dda)=="string")then
cda.x=cda.parent:newDynamicValue(cda,dda)end;if(type(__b)=="string")then
cda.y=cda.parent:newDynamicValue(cda,__b)end
cda.parent:recalculateDynamicValues()end;cda:customEventHandler("basalt_reposition")
cda:updateDraw()return cda end,getX=function(cda)return

type(cda.x)=="number"and cda.x or math.floor(cda.x[1]+0.5)end,getY=function(cda)return

type(cda.y)=="number"and cda.y or math.floor(cda.y[1]+0.5)end,getPosition=function(cda)return
cda:getX(),cda:getY()end,getVisibility=function(cda)return a_a end,setVisibility=function(cda,dda)
a_a=dda or not a_a;cda:updateDraw()return cda end,setSize=function(cda,dda,__b,a_b)if(type(dda)==
"number")then
cda.width=a_b and cda:getWidth()+dda or dda end
if(type(__b)=="number")then cda.height=a_b and
cda:getHeight()+__b or __b end
if(cda.parent~=nil)then if(type(dda)=="string")then
cda.width=cda.parent:newDynamicValue(cda,dda)end;if(type(__b)=="string")then
cda.height=cda.parent:newDynamicValue(cda,__b)end
cda.parent:recalculateDynamicValues()end;if(dba~=nil)and(cca=="stretch")then
_ca=cb.resizeBIMG(dba,cda:getSize())[aca]end
cda:customEventHandler("basalt_resize")cda:updateDraw()return cda end,getHeight=function(cda)
return
type(cda.height)=="number"and cda.height or
math.floor(cda.height[1]+0.5)end,getWidth=function(cda)return

type(cda.width)=="number"and cda.width or math.floor(cda.width[1]+0.5)end,getSize=function(cda)return
cda:getWidth(),cda:getHeight()end,calculateDynamicValues=function(cda)
if(
type(cda.width)=="table")then cda.width:calculate()end
if(type(cda.height)=="table")then cda.height:calculate()end
if(type(cda.x)=="table")then cda.x:calculate()end
if(type(cda.y)=="table")then cda.y:calculate()end;cda:updateDraw()return cda end,setBackground=function(cda,dda,__b,a_b)cda.bgColor=
dda or false
cda.bgSymbol=__b or(cda.bgColor~=false and cda.bgSymbol or
false)cda.bgSymbolColor=a_b or cda.bgSymbolColor
cda:updateDraw()return cda end,setTexture=function(cda,dda,__b,a_b)if(
type(dda)=="string")then dba=cb.loadImageAsBimg(dda)elseif(type(dda)=="table")then
dba=dda end
if(dba.animated)then local b_b=dba[aca].duration or
dba.secondsPerFrame or 0.2
bca=os.startTimer(b_b)cda.parent:addEvent("other_event",cda)
ada["other_event"]=true end;dca=a_b==false and false or true;aca=1
cca=__b or"normal"if(cca=="stretch")then
_ca=cb.resizeBIMG(dba,cda:getSize())[1]else _ca=dba[1]end
cda:updateDraw()return cda end,setTransparent=function(cda,dda)cda.transparentColor=
dda or false;if(dda~=false)then cda.bgSymbol=false
cda.bgSymbolColor=false end;cda:updateDraw()return cda end,getBackground=function(cda)return
cda.bgColor end,setForeground=function(cda,dda)cda.fgColor=dda or false
cda:updateDraw()return cda end,getForeground=function(cda)return cda.fgColor end,setShadow=function(cda,dda)if(
dda==false)then _aa=false else baa=dda;_aa=true end
cda:updateDraw()return cda end,isShadowActive=function(cda)return _aa end,setBorder=function(cda,...)
if(
...~=nil)then local dda={...}
for __b,a_b in pairs(dda)do if(a_b=="left")or(#dda==1)then
aaa["left"]=dda[1]end;if(a_b=="top")or(#dda==1)then
aaa["top"]=dda[1]end;if(a_b=="right")or(#dda==1)then
aaa["right"]=dda[1]end;if(a_b=="bottom")or(#dda==1)then
aaa["bottom"]=dda[1]end end end;cda:updateDraw()return cda end,getBorder=function(cda,dda)if(
dda=="left")then return borderLeft end
if(dda=="top")then return borderTop end;if(dda=="right")then return borderRight end;if(dda=="bottom")then
return borderBottom end end,draw=function(cda)
if
(a_a)then
if(cda.parent~=nil)then local dda,__b=cda:getAnchorPosition()
local a_b,b_b=cda:getSize()local c_b,d_b=cda.parent:getSize()
if(dda+a_b<1)or(dda>c_b)or(__b+
b_b<1)or(__b>d_b)then return false end;if(cda.transparentColor~=false)then
cda.parent:drawForegroundBox(dda,__b,a_b,b_b,cda.transparentColor)end;if(cda.bgColor~=false)then
cda.parent:drawBackgroundBox(dda,__b,a_b,b_b,cda.bgColor)end
if(cda.bgSymbol~=false)then
cda.parent:drawTextBox(dda,__b,a_b,b_b,cda.bgSymbol)if(cda.bgSymbol~=" ")then
cda.parent:drawForegroundBox(dda,__b,a_b,b_b,cda.bgSymbolColor)end end
if(_ca~=nil)then
if(cca=="center")then local aab,bab=#_ca[1][1],#_ca
local cab=aab<a_b and math.floor((a_b-aab)/
2)or 0
local dab=bab<b_b and math.floor((b_b-bab)/2)or 0
local _bb=aab<a_b and 1 or math.floor((aab-a_b)/2)
local abb=aab<a_b and a_b or
a_b-math.floor((a_b-aab)/2 +0.5)-1
local bbb=bab<b_b and 1 or math.floor((bab-b_b)/2)
local cbb=bab<b_b and b_b or
b_b-math.floor((b_b-bab)/2 +0.5)-1;local dbb=1
for k=bbb,#_ca do
if(_ca[k]~=nil)then local _cb,acb,bcb=bc(_ca[k])_cb=cc(_cb,_bb,abb)
acb=cc(acb,_bb,abb)bcb=cc(bcb,_bb,abb)
cda.parent:blit(dda+cab,__b+dbb-1 +dab,_cb,acb,bcb)end;dbb=dbb+1;if(k==cbb)then break end end else
for aab,bab in pairs(_ca)do local cab,dab,_bb=bc(bab)cab=cc(cab,1,a_b)dab=cc(dab,1,a_b)
_bb=cc(_bb,1,a_b)cda.parent:blit(dda,__b+aab-1,cab,dab,_bb)if(aab==
b_b)then break end end end end
if(_aa)then
cda.parent:drawBackgroundBox(dda+1,__b+b_b,a_b,1,baa)
cda.parent:drawBackgroundBox(dda+a_b,__b+1,1,b_b,baa)
cda.parent:drawForegroundBox(dda+1,__b+b_b,a_b,1,baa)
cda.parent:drawForegroundBox(dda+a_b,__b+1,1,b_b,baa)end;local _ab=cda.bgColor
if(aaa["left"]~=false)then
cda.parent:drawTextBox(dda,__b,1,b_b,"\149")if(_ab~=false)then
cda.parent:drawBackgroundBox(dda,__b,1,b_b,_ab)end
cda.parent:drawForegroundBox(dda,__b,1,b_b,aaa["left"])end
if(aaa["top"]~=false)then
cda.parent:drawTextBox(dda,__b,a_b,1,"\131")if(_ab~=false)then
cda.parent:drawBackgroundBox(dda,__b,a_b,1,cda.bgColor)end
cda.parent:drawForegroundBox(dda,__b,a_b,1,aaa["top"])end
if(aaa["left"]~=false)and(aaa["top"]~=false)then
cda.parent:drawTextBox(dda,__b,1,1,"\151")if(_ab~=false)then
cda.parent:drawBackgroundBox(dda,__b,1,1,cda.bgColor)end
cda.parent:drawForegroundBox(dda,__b,1,1,aaa["left"])end
if(aaa["right"]~=false)then
cda.parent:drawTextBox(dda+a_b-1,__b,1,b_b,"\149")if(_ab~=false)then
cda.parent:drawForegroundBox(dda+a_b-1,__b,1,b_b,cda.bgColor)end
cda.parent:drawBackgroundBox(dda+a_b-1,__b,1,b_b,aaa["right"])end
if(aaa["bottom"]~=false)then
cda.parent:drawTextBox(dda,__b+b_b-1,a_b,1,"\143")if(_ab~=false)then
cda.parent:drawForegroundBox(dda,__b+b_b-1,a_b,1,cda.bgColor)end
cda.parent:drawBackgroundBox(dda,__b+b_b-1,a_b,1,aaa["bottom"])end
if(aaa["top"]~=false)and(aaa["right"]~=false)then cda.parent:drawTextBox(
dda+a_b-1,__b,1,1,"\148")if
(_ab~=false)then
cda.parent:drawForegroundBox(dda+a_b-1,__b,1,1,cda.bgColor)end
cda.parent:drawBackgroundBox(dda+a_b-1,__b,1,1,aaa["right"])end
if(aaa["right"]~=false)and(aaa["bottom"]~=false)then
cda.parent:drawTextBox(
dda+a_b-1,__b+b_b-1,1,1,"\133")if(_ab~=false)then
cda.parent:drawForegroundBox(dda+a_b-1,__b+b_b-1,1,1,cda.bgColor)end
cda.parent:drawBackgroundBox(dda+a_b-1,
__b+b_b-1,1,1,aaa["right"])end
if(aaa["bottom"]~=false)and(aaa["left"]~=false)then cda.parent:drawTextBox(dda,
__b+b_b-1,1,1,"\138")if(_ab~=false)then
cda.parent:drawForegroundBox(
dda-1,__b+b_b-1,1,1,cda.bgColor)end
cda.parent:drawBackgroundBox(dda,__b+b_b-1,1,1,aaa["left"])end end;_da=false;return true end;return false end,getAbsolutePosition=function(cda,dda,__b)
if(
dda==nil)or(__b==nil)then dda,__b=cda:getAnchorPosition()end
if(cda.parent~=nil)then
local a_b,b_b=cda.parent:getAbsolutePosition()dda=a_b+dda-1;__b=b_b+__b-1 end;return dda,__b end,getAnchorPosition=function(cda,dda,__b,a_b)if(
dda==nil)then dda=cda:getX()end
if(__b==nil)then __b=cda:getY()end
if(cda.parent~=nil)then local b_b,c_b=cda.parent:getSize()
if(dd=="top")then dda=math.floor(
b_b/2)+dda-1 elseif(dd=="topRight")then
dda=b_b+dda-1 elseif(dd=="right")then dda=b_b+dda-1
__b=math.floor(c_b/2)+__b-1 elseif(dd=="bottomRight")then dda=b_b+dda-1;__b=c_b+__b-1 elseif(dd=="bottom")then dda=math.floor(
b_b/2)+dda-1;__b=c_b+__b-1 elseif(dd==
"bottomLeft")then __b=c_b+__b-1 elseif(dd=="left")then
__b=math.floor(c_b/2)+__b-1 elseif(dd=="center")then dda=math.floor(b_b/2)+dda-1;__b=math.floor(
c_b/2)+__b-1 end;local d_b,_ab=cda.parent:getOffsetInternal()if not(__a or a_b)then return
dda+d_b,__b+_ab end end;return dda,__b end,ignoreOffset=function(cda,dda)
__a=dda;if(dda==nil)then __a=true end;return cda end,getBaseFrame=function(cda)
if(
cda.parent~=nil)then return cda.parent:getBaseFrame()end;return cda end,setAnchor=function(cda,dda)dd=dda
cda:updateDraw()return cda end,getAnchor=function(cda)return dd end,onChange=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("value_changed",__b)end end;return cda end,onClick=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_click",__b)end end
if(cda.parent~=nil)then
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true
cda.parent:addEvent("mouse_up",cda)ada["mouse_up"]=true end;return cda end,onClickUp=function(cda,...)for dda,__b in
pairs(table.pack(...))do
if(type(__b)=="function")then cda:registerEvent("mouse_up",__b)end end
if(cda.parent~=nil)then
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true
cda.parent:addEvent("mouse_up",cda)ada["mouse_up"]=true end;return cda end,onRelease=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_release",__b)end end
if(cda.parent~=nil)then
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true
cda.parent:addEvent("mouse_up",cda)ada["mouse_up"]=true end;return cda end,onScroll=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_scroll",__b)end end
if(cda.parent~=nil)then
cda.parent:addEvent("mouse_scroll",cda)ada["mouse_scroll"]=true end;return cda end,onHover=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_hover",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("mouse_move",cda)ada["mouse_move"]=true end
return cda end,onLeave=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_leave",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("mouse_move",cda)ada["mouse_move"]=true end
return cda end,onDrag=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("mouse_drag",__b)end end
if(cda.parent~=nil)then
cda.parent:addEvent("mouse_drag",cda)ada["mouse_drag"]=true
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true
cda.parent:addEvent("mouse_up",cda)ada["mouse_up"]=true end;return cda end,onEvent=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("other_event",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("other_event",cda)ada["other_event"]=true end;return
cda end,onKey=function(cda,...)
if
(caa)then
for dda,__b in pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("key",__b)end end;if(cda.parent~=nil)then cda.parent:addEvent("key",cda)
ada["key"]=true end end;return cda end,onChar=function(cda,...)
if
(caa)then
for dda,__b in pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("char",__b)end end;if(cda.parent~=nil)then cda.parent:addEvent("char",cda)
ada["char"]=true end end;return cda end,onResize=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("basalt_resize",__b)end end;return cda end,onReposition=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("basalt_reposition",__b)end end;return cda end,onKeyUp=function(cda,...)for dda,__b in
pairs(table.pack(...))do
if(type(__b)=="function")then cda:registerEvent("key_up",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("key_up",cda)ada["key_up"]=true end;return cda end,isFocused=function(cda)if(
cda.parent~=nil)then
return cda.parent:getFocusedObject()==cda end;return false end,onGetFocus=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("get_focus",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true end;return
cda end,onLoseFocus=function(cda,...)
for dda,__b in
pairs(table.pack(...))do if(type(__b)=="function")then
cda:registerEvent("lose_focus",__b)end end;if(cda.parent~=nil)then
cda.parent:addEvent("mouse_click",cda)ada["mouse_click"]=true end;return
cda end,registerEvent=function(cda,dda,__b)return
bda:registerEvent(dda,__b)end,removeEvent=function(cda,dda,__b)
return bda:removeEvent(dda,__b)end,sendEvent=function(cda,dda,...)return bda:sendEvent(dda,cda,...)end,isCoordsInObject=function(cda,dda,__b)
if
(a_a)and(caa)then if(dda==nil)or(__b==nil)then return false end
local a_b,b_b=cda:getAbsolutePosition()local c_b,d_b=cda:getSize()
if
(a_b<=dda)and(a_b+c_b>dda)and(b_b<=__b)and(b_b+d_b>__b)then return true end end;return false end,mouseHandler=function(cda,dda,__b,a_b,b_b)
if
(cda:isCoordsInObject(__b,a_b))then local c_b,d_b=cda:getAbsolutePosition()
local _ab=bda:sendEvent("mouse_click",cda,"mouse_click",dda,__b-
(c_b-1),a_b- (d_b-1),__b,a_b,b_b)if(_ab==false)then return false end;if(cda.parent~=nil)then
cda.parent:setFocusedObject(cda)end;d_a=true;daa=true;_ba,aba=__b,a_b;return true end;return false end,mouseUpHandler=function(cda,dda,__b,a_b)
daa=false
if(d_a)then local b_b,c_b=cda:getAbsolutePosition()
local d_b=bda:sendEvent("mouse_release",cda,"mouse_release",dda,__b- (
b_b-1),a_b- (c_b-1),__b,a_b)d_a=false end
if(cda:isCoordsInObject(__b,a_b))then local b_b,c_b=cda:getAbsolutePosition()
local d_b=bda:sendEvent("mouse_up",cda,"mouse_up",dda,
__b- (b_b-1),a_b- (c_b-1),__b,a_b)if(d_b==false)then return false end;return true end;return false end,dragHandler=function(cda,dda,__b,a_b)
if
(daa)then local b_b,c_b=cda:getAbsolutePosition()
local d_b=bda:sendEvent("mouse_drag",cda,"mouse_drag",dda,__b- (b_b-1),
a_b- (c_b-1),_ba-__b,aba-a_b,__b,a_b)_ba,aba=__b,a_b;if(d_b~=nil)then return d_b end;if(cda.parent~=nil)then
cda.parent:setFocusedObject(cda)end;return true end
if(cda:isCoordsInObject(__b,a_b))then
local b_b,c_b=cda:getAbsolutePosition(cda:getAnchorPosition())_ba,aba=__b,a_b;bba,cba=b_b-__b,c_b-a_b end;return false end,scrollHandler=function(cda,dda,__b,a_b)
if
(cda:isCoordsInObject(__b,a_b))then local b_b,c_b=cda:getAbsolutePosition()
local d_b=bda:sendEvent("mouse_scroll",cda,"mouse_scroll",dda,__b-
(b_b-1),a_b- (c_b-1))if(d_b==false)then return false end;if(cda.parent~=nil)then
cda.parent:setFocusedObject(cda)end;return true end;return false end,hoverHandler=function(cda,dda,__b,a_b)
if
(cda:isCoordsInObject(dda,__b))then
local b_b=bda:sendEvent("mouse_hover",cda,"mouse_hover",dda,__b,a_b)if(b_b==false)then return false end;c_a=true;return true end
if(c_a)then
local b_b=bda:sendEvent("mouse_leave",cda,"mouse_leave",dda,__b,a_b)if(b_b==false)then return false end;c_a=false end;return false end,keyHandler=function(cda,dda,__b)if
(caa)and(a_a)then
if(cda:isFocused())then
local a_b=bda:sendEvent("key",cda,"key",dda,__b)if(a_b==false)then return false end;return true end end;return
false end,keyUpHandler=function(cda,dda)if
(caa)and(a_a)then
if(cda:isFocused())then
local __b=bda:sendEvent("key_up",cda,"key_up",dda)if(__b==false)then return false end;return true end end;return
false end,charHandler=function(cda,dda)if
(caa)and(a_a)then
if(cda:isFocused())then
local __b=bda:sendEvent("char",cda,"char",dda)if(__b==false)then return false end;return true end end;return
false end,valueChangedHandler=function(cda)
bda:sendEvent("value_changed",cda,cd)end,eventHandler=function(cda,dda,...)local __b={...}
if
(dda=="timer")and(__b[1]==bca)then
if(dba[aca+1]~=nil)then aca=aca+1;if(cca=="stretch")then
_ca=cb.resizeBIMG(dba,cda:getSize())[aca]else _ca=dba[aca]end;local b_b=dba[aca].duration or
dba.secondsPerFrame or 0.2
bca=os.startTimer(b_b)else
if(dca)then aca=1;if(cca=="stretch")then
_ca=cb.resizeBIMG(dba,cda:getSize())[1]else _ca=dba[1]end;local b_b=
dba[1].duration or dba.secondsPerFrame or 0.2
bca=os.startTimer(b_b)end end;cda:updateDraw()end;local a_b=bda:sendEvent("other_event",cda,dda,...)if(a_b~=nil)then
return a_b end end,customEventHandler=function(cda,dda,...)
if
(
dba~=nil)and(cca=="stretch")and(dda=="basalt_resize")then
_ca=cb.resizeBIMG(dba,cda:getSize())[aca]cda:updateDraw()end;local __b=bda:sendEvent("custom_event",cda,dda,...)if(__b~=nil)then
return __b end;return true end,getFocusHandler=function(cda)
local dda=bda:sendEvent("get_focus",cda)if(dda~=nil)then return dda end;return true end,loseFocusHandler=function(cda)
daa=false;local dda=bda:sendEvent("lose_focus",cda)
if(dda~=nil)then return dda end;return true end,init=function(cda)
if
(cda.parent~=nil)then for dda,__b in pairs(ada)do
if(__b)then cda.parent:addEvent(dda,cda)end end end;if not(b_a)then b_a=true;return true end;return false end}ad.__index=ad;return ad end
end; 
project['default']['theme'] = function(...)
return
{BasaltBG=colors.lightGray,BasaltText=colors.black,FrameBG=colors.gray,FrameText=colors.black,ButtonBG=colors.gray,ButtonText=colors.black,CheckboxBG=colors.gray,CheckboxText=colors.black,InputBG=colors.gray,InputText=colors.black,TextfieldBG=colors.gray,TextfieldText=colors.black,ListBG=colors.gray,ListText=colors.black,MenubarBG=colors.gray,MenubarText=colors.black,DropdownBG=colors.gray,DropdownText=colors.black,RadioBG=colors.gray,RadioText=colors.black,SelectionBG=colors.black,SelectionText=colors.lightGray,GraphicBG=colors.black,ImageBG=colors.black,PaneBG=colors.black,ProgramBG=colors.black,ProgressbarBG=colors.gray,ProgressbarText=colors.black,ProgressbarActiveBG=colors.black,ScrollbarBG=colors.lightGray,ScrollbarText=colors.gray,ScrollbarSymbolColor=colors.black,SliderBG=false,SliderText=colors.gray,SliderSymbolColor=colors.black,SwitchBG=colors.lightGray,SwitchText=colors.gray,SwitchBGSymbol=colors.black,SwitchInactive=colors.red,SwitchActive=colors.green,LabelBG=false,LabelText=colors.black,GraphBG=colors.gray,GraphText=colors.black}
end; 
local dda=require("basaltEvent")()
local __b=require("Frame")local a_b=require("theme")local b_b=require("utils")
local c_b=require("basaltLogs")local d_b=b_b.uuid;local _ab=b_b.createText;local aab=b_b.tableCount;local bab=300;local cab=50
local dab=term.current()local _bb="1.6.4"
local abb=fs.getDir(table.pack(...)[2]or"")local bbb,cbb,dbb,_cb,acb,bcb={},{},{},{},{},{}local ccb,dcb,_db,adb;local bdb={}if not term.isColor or not
term.isColor()then
error('Basalt requires an advanced (golden) computer to run.',0)end;local cdb={}
for bdc,cdc in
pairs(colors)do if(type(cdc)=="number")then
cdb[bdc]={dab.getPaletteColor(cdc)}end end
local function ddb()adb=false;dab.clear()dab.setCursorPos(1,1)
for bdc,cdc in pairs(colors)do if(
type(cdc)=="number")then
dab.setPaletteColor(cdc,colors.packRGB(table.unpack(cdb[bdc])))end end end
local function __c(bdc)dab.clear()dab.setBackgroundColor(colors.black)
dab.setTextColor(colors.red)local cdc,ddc=dab.getSize()
if(bdb.logging)then c_b(bdc,"Error")end;local __d=_ab("Basalt error: "..bdc,cdc)local a_d=1;for b_d,c_d in pairs(__d)do
dab.setCursorPos(1,a_d)dab.write(c_d)a_d=a_d+1 end;dab.setCursorPos(1,
a_d+1)adb=false end
local function a_c(bdc)
assert(bdc~="function","Schedule needs a function in order to work!")return
function(...)local cdc=coroutine.create(bdc)
local ddc,__d=coroutine.resume(cdc,...)if(ddc)then table.insert(bcb,cdc)else __c(__d)end end end;local b_c=function(bdc,cdc)acb[bdc]=cdc end
local c_c=function(bdc)return acb[bdc]end;local d_c=function(bdc)a_b=bdc end
local _ac=function(bdc)return a_b[bdc]end
local aac={getDynamicValueEventSetting=function()return bdb.dynamicValueEvents end,getMainFrame=function()return ccb end,setVariable=b_c,getVariable=c_c,getTheme=_ac,setMainFrame=function(bdc)
ccb=bdc end,getActiveFrame=function()return dcb end,setActiveFrame=function(bdc)dcb=bdc end,getFocusedObject=function()return _db end,setFocusedObject=function(bdc)_db=bdc end,getMonitorFrame=function(bdc)return
dbb[bdc]or _cb[bdc][1]end,setMonitorFrame=function(bdc,cdc,ddc)if(ccb==cdc)then
ccb=nil end
if(ddc)then _cb[bdc]={cdc,sides}else dbb[bdc]=cdc end;if(cdc==nil)then _cb[bdc]=nil end end,getBaseTerm=function()return
dab end,schedule=a_c,stop=ddb,newFrame=__b,getDirectory=function()return abb end}
local function bac(bdc,cdc,ddc,__d,a_d)
if(#bcb>0)then local b_d={}
for n=1,#bcb do
if(bcb[n]~=nil)then
if
(coroutine.status(bcb[n])=="suspended")then
local c_d,d_d=coroutine.resume(bcb[n],bdc,cdc,ddc,__d,a_d)if not(c_d)then __c(d_d)end else table.insert(b_d,n)end end end
for n=1,#b_d do table.remove(bcb,b_d[n]- (n-1))end end end
local function cac()if(adb==false)then return end;if(ccb~=nil)then ccb:draw()
ccb:updateTerm()end
for bdc,cdc in pairs(dbb)do cdc:draw()cdc:updateTerm()end
for bdc,cdc in pairs(_cb)do cdc[1]:draw()cdc[1]:updateTerm()end end;local dac,_bc,abc=nil,nil,nil;local bbc=nil
local function cbc(bdc,cdc,ddc,__d)dac,_bc,abc=cdc,ddc,__d;if(bbc==nil)then
bbc=os.startTimer(bab/1000)end end
local function dbc()bbc=nil;ccb:hoverHandler(_bc,abc,dac)dcb=ccb end;local _cc,acc,bcc=nil,nil,nil;local ccc=nil;local function dcc()ccc=nil;ccb:dragHandler(_cc,acc,bcc)
dcb=ccb end;local function _dc(bdc,cdc,ddc,__d)_cc,acc,bcc=cdc,ddc,__d
if(cab<50)then dcc()else if
(ccc==nil)then ccc=os.startTimer(cab/1000)end end end
local function adc(bdc,...)
local cdc={...}
if(dda:sendEvent("basaltEventCycle",bdc,...)==false)then return end;if(bdc=="terminate")then bdb.stop()end
if(ccb~=nil)then
local ddc={mouse_click=ccb.mouseHandler,mouse_up=ccb.mouseUpHandler,mouse_scroll=ccb.scrollHandler,mouse_drag=_dc,mouse_move=cbc}local __d=ddc[bdc]if(__d~=nil)then __d(ccb,...)cac()return end end
if(bdc=="monitor_touch")then if(dbb[cdc[1]]~=nil)then
dbb[cdc[1]]:mouseHandler(1,cdc[2],cdc[3],true)dcb=dbb[cdc[1]]end
if
(aab(_cb)>0)then for ddc,__d in pairs(_cb)do
__d[1]:mouseHandler(1,cdc[2],cdc[3],true,cdc[1])end end;cac()return end
if(dcb~=nil)then
local ddc={char=dcb.charHandler,key=dcb.keyHandler,key_up=dcb.keyUpHandler}local __d=ddc[bdc]
if(__d~=nil)then if(bdc=="key")then bbb[cdc[1]]=true elseif(bdc=="key_up")then
bbb[cdc[1]]=false end;__d(dcb,...)cac()return end end
if(bdc=="timer")and(cdc[1]==bbc)then dbc()elseif
(bdc=="timer")and(cdc[1]==ccc)then dcc()else
for ddc,__d in pairs(cbb)do __d:eventHandler(bdc,...)end end;bac(bdc,...)cac()end
bdb={logging=false,dynamicValueEvents=false,setTheme=d_c,getTheme=_ac,drawFrames=cac,getVersion=function()return _bb end,setVariable=b_c,getVariable=c_c,setBaseTerm=function(bdc)dab=bdc end,log=function(...)c_b(...)end,setMouseMoveThrottle=function(bdc)
if
(_HOST:find("CraftOS%-PC"))then if(config.get("mouse_move_throttle")~=10)then
config.set("mouse_move_throttle",10)end
if(bdc<100)then bab=100 else bab=bdc end;return true end;return false end,setMouseDragThrottle=function(bdc)if(
bdc<=0)then cab=0 else ccc=nil;cab=bdc end end,autoUpdate=function(bdc)
adb=bdc;if(bdc==nil)then adb=true end;local function cdc()cac()while adb do
adc(os.pullEventRaw())end end
local ddc,__d=xpcall(cdc,debug.traceback)if not(ddc)then __c(__d)return end end,update=function(bdc,...)if(
bdc~=nil)then local cdc,ddc=xpcall(adc,debug.traceback,bdc,...)if not(cdc)then
__c(ddc)return end end end,stop=ddb,stopUpdate=ddb,isKeyDown=function(bdc)if(
bbb[bdc]==nil)then return false end;return bbb[bdc]end,getFrame=function(bdc)for cdc,ddc in
pairs(cbb)do if(ddc.name==bdc)then return ddc end end end,getActiveFrame=function()return
dcb end,setActiveFrame=function(bdc)
if(bdc:getType()=="Frame")then dcb=bdc;return true end;return false end,onEvent=function(...)
for bdc,cdc in
pairs(table.pack(...))do if(type(cdc)=="function")then
dda:registerEvent("basaltEventCycle",cdc)end end end,schedule=a_c,createFrame=function(bdc)bdc=bdc or
d_b()
for ddc,__d in pairs(cbb)do if(__d.name==bdc)then return nil end end;local cdc=__b(bdc,nil,nil,aac)cdc:init()
table.insert(cbb,cdc)if
(ccb==nil)and(cdc:getName()~="basaltDebuggingFrame")then cdc:show()end;return cdc end,removeFrame=function(bdc)cbb[bdc]=
nil end,setProjectDir=function(bdc)abb=bdc end,debug=function(...)local bdc={...}if(ccb==nil)then
print(...)return end;if(ccb.name~="basaltDebuggingFrame")then
if
(ccb~=bdb.debugFrame)then bdb.debugLabel:setParent(ccb)end end;local cdc=""for ddc,__d in pairs(bdc)do
cdc=cdc..
tostring(__d).. (#bdc~=ddc and", "or"")end
bdb.debugLabel:setText("[Debug] "..cdc)for ddc,__d in pairs(_ab(cdc,bdb.debugList:getWidth()))do
bdb.debugList:addItem(__d)end
if(
bdb.debugList:getItemCount()>50)then bdb.debugList:removeItem(1)end
bdb.debugList:setValue(bdb.debugList:getItem(bdb.debugList:getItemCount()))if
(bdb.debugList.getItemCount()>bdb.debugList:getHeight())then
bdb.debugList:setOffset(bdb.debugList:getItemCount()-
bdb.debugList:getHeight())end
bdb.debugLabel:show()end}
bdb.debugFrame=bdb.createFrame("basaltDebuggingFrame"):showBar():setBackground(colors.lightGray):setBar("Debug",colors.black,colors.gray)
bdb.debugFrame:addButton("back"):setAnchor("topRight"):setSize(1,1):setText("\22"):onClick(function()if(
bdb.oldFrame~=nil)then bdb.oldFrame:show()end end):setBackground(colors.red):show()
bdb.debugList=bdb.debugFrame:addList("debugList"):setSize("parent.w - 2","parent.h - 3"):setPosition(2,3):setScrollable(true):show()
bdb.debugLabel=bdb.debugFrame:addLabel("debugLabel"):onClick(function()
bdb.oldFrame=ccb;bdb.debugFrame:show()end):setBackground(colors.black):setForeground(colors.white):setAnchor("bottomLeft"):ignoreOffset():setZIndex(20):show()return bdb