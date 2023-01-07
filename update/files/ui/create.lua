local basalt = require("/ui/api/basalt")

local frame = basalt.createFrame()



local user = frame:addInput()

local pass = frame:addInput()


local submit = frame:addButton()
submit:setSize(10, 3)
submit:setText("Create")
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
        if fs.exists("/users/" .. user:getValue()) then
            basalt.debug("not running create account")
        else
            local file = fs.open("/users/" .. user:getValue(), "w")
            file.write(pass:getValue())
            file.close()
            fs.makeDir("/users/" .. user:getValue() .. "data")
        end
    end
end)

basalt.autoUpdate()
