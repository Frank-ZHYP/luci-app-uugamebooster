require("luci.util")

mp = Map("uuplugin")
mp.title = translate("网易UU游戏加速器")
mp.description = translate("一个富家子弟用的主机游戏加速器 (开启服务后，使用UU主机加速APP绑定路由器并指定加速主机、电脑、手机)")

mp:section(SimpleSection).template  = "uuplugin/uuplugin_status"

s = mp:section(TypedSection, "uuplugin")
s.anonymous = true
s.addremove = false

o = s:option(Flag, "enabled", translate("启用"))
o.default = 0
o.optional = false

o = s:option(Value, "model", translate("设备型号"),
        translate("本机设备型号，在APP里方便区分不同路由器，绑定后修改型号需要解绑后重新绑定才生效"))
o.placeholder = "OpenWrt"


mp:section(SimpleSection).template  = "uuplugin/uuplugin_qcode"

return mp
