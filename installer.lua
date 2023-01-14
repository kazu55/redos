shell.run("wget run https://basalt.madefor.cc/install.lua packed /basalt.lua")

shell.run("wget run http://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
shell.run("wget run http://raw.githubusercontent.com/kazu55/redos/main/update/download-files.txt")

shell.run("wget run http://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
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
        local data = http.get(update_downloadfiles[i][1], nil, update_downloadfiles[i][3] or false)
        if not update_downloadfiles[i][3] then
            local file = fs.open(update_downloadfiles[i][2], "w")
            file.write(data.readAll())
            file.close()
            data.close()
        else
            local file = fs.open(update_downloadfiles[i][2], "wb")
            file.write(data.readAll())
            file.close()
            data.close()
        end
    end
    fs.delete("/basalt.lua")
    os.reboot()
end
)

basalt.autoUpdate()
end
