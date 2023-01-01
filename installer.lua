shell.run("wget run https://basalt.madefor.cc/install.lua packed /basalt.lua")

shell.run("wget run http://localhost:8887/redos/update/version.txt")
shell.run("wget run http://localhost:8887/redos/update/download-files.txt")

if not update_downloadfiles then
    error("This version is latest", 2)
else
local basalt = require("/basalt")

local w, h = term.getSize()

local frame = basalt.createFrame()

local begin = frame:addButton()
local aLabel = frame:addLabel()
begin:setPosition("parent.w / 2 - 5 / 2 + 1", "parent.h / 1.5")
aLabel:setText(update_msg)
begin:setSize(9, 3)
begin:setText("BEGIN")
begin:setPosition("parent.w / 2 - 9 / 2 + 1", "parent.h / 1.5")
begin:onClick(function()
    _G.notprint = true
    fs.makeDir("/backup")
    for i = 1, #update_downloadfiles do
        fs.delete(update_downloadfiles[i][2])
        shell.run("wget ".. update_downloadfiles[i][1] .. " " .. update_downloadfiles[i][2])
        sleep(0.5)
    end
    shell.run("rm /basalt.lua")
    os.reboot()
end
)

basalt.autoUpdate()
end