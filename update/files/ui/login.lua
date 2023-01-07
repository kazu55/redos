local basalt = require("/ui/api/basalt")

local frame = basalt.createFrame()



local user = frame:addInput()

local pass = frame:addInput()


local submit = frame:addButton()
submit:setSize(9, 3)
submit:setText("Sign in")
submit:setPosition("parent.w / 2 - 9 / 2 + 1", "parent.h / 1.5")

pass:setInputType("password")
pass:setDefaultText("Password")
user:setDefaultText("User")
pass:setSize(16)
user:setSize(16)
pass:setPosition("parent.w / 2 - 16 / 2 + 1", "parent.h / 2 + 1")
user:setPosition("parent.w / 2 - 16 / 2 + 1", "parent.h / 2 - 1")
submit:onClick(function()
    logwrite("Sign In User: " .. user:getValue())
    if user:getValue() == "" then basalt.debug("required: user input") else
        if not fs.exists("/users/" .. user:getValue()) then
            basalt.debug("Not Found")
        else
        local file = fs.open("/users/" .. user:getValue(), "r")
        if pass:getValue() == file.readAll() then file.close() shell.setDir("/users/" .. user:getValue() .. "data") _G.loggeduser = user:getValue() basalt.stopUpdate() end end
    end
end)

basalt.autoUpdate()
