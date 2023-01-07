_G.runningversion = 20238
_G.versiontype = "release"
term.setPaletteColor(colors.black, 0, 0, 0)

os.loadAPI("/ui/api/dialog/dialog.lua")

function _G.os.version()
    return "HNY-2023 v" .. tostring(runningversion)
end


backerror = error

_G.bootdate = os.date("%Y_%m_%d_%H_%M_%S")

fs.open("latest.log", "w").close()
fs.move("/latest.log", "/logs/log-" .. bootdate .. ".log")


function _G.logwrite(text)
    local file = fs.open("/latest.log", "a")
    file.write("[" .. os.date() .. ", " .. shell.getRunningProgram() .. "] " .. text .. "\n")
    file.close()
end

_G.screen_w, _G.screen_h = term.getSize()

logwrite("starting " .. os.version())

logwrite("register function...")

term.clear()
term.setCursorPos(1, 1)

if screen_w < 60 or screen_h < 25 then
    printError("not supported screen.")
    print("Screen width must be 60 or greater and Screen width must be 25 to activate.")
    while true do sleep(0) end
end

function _G.loading_text(text)
    term.setCursorPos(_G.screen_w / 2 - string.len(text) / 2 + 1, _G.screen_h / 1.5)
    term.setBackgroundColor(colors.black)
    term.setTextColor(colors.gray)
    term.clearLine()
    term.write(text)
end

function _G.textutils.animate_1()
    local frames = {
        {i = false, c = " \7      "},
        {i = false, c = " \7      "},
        {i = false, c = " \7      "},
        {i = false, c = "\7 \7   "},
        {i = false, c = "\7 \7   "},
        {i = false, c = "\7 \7   "},
        {i = false, c = "\7 \7 \7"},
        {i = false, c = "\7 \7 \7"},
        {i = false, c = "\7 \7 \7"},
    }
  
    local function drawFrame(frame)
        term.setBackgroundColor(colors.black)
        term.setTextColor(colors.gray)
        if frame.i then
            term.setBackgroundColor(colors.gray)
            term.setTextColor(colors.black)
        end
        write(frame.c)
    end
    sleep(0.01)
    while true do
        for i, frame in pairs(frames) do
            term.setCursorPos(_G.screen_w / 2 - string.len(frame.c) / 2 + 1, screen_h/2)
            term.clearLine()
            drawFrame(frame)
            sleep(0.1)
        end
    end
end

function _G.textutils.progressbar(parcent)
    if parcent <= 25 and parcent < 50 then
        return "[==      ]"
    elseif parcent <= 50 and parcent < 75 then
        return "[====    ]"
    elseif parcent <= 75 and parcent < 100 then
        return "[======  ]"
    elseif parcent == 100 then
        return "[========]"
    end
end

function update()
    while true do
        sleep(0.1)
        _G.screen_w, _G.screen_h = term.getSize()
    end
end

function _G.centerText(text)
    term.setCursorPos(_G.screen_w / 2 - string.len(text) / 2 + 1, _G.screen_h / 2)
    term.setBackgroundColor(colors.black)
    term.setTextColor(colors.gray)
    term.clearLine()
    term.write(text)
end
function _G.loading_text2(text)
    term.setCursorPos(_G.screen_w / 2 - string.len(text) / 2 + 1, _G.screen_h / 1.5)
    term.clearLine()
    term.write(text)
end
function _G.centerText2(text, y, textcol)
    term.setCursorPos(_G.screen_w / 2 - string.len(text) / 2 + 1, y)
    term.setTextColor(textcol)
    term.write(text)
end
function _G.text(message, type)
    if type == 1 then
      term.setTextColor(colors.blue)
      print(message)
      term.setTextColor(colors.white)
    elseif type == 2 then
      term.setTextColor(colors.orange)
      print(message)
      term.setTextColor(colors.white)
    elseif type == 3 then
      error(message, 0)
    end
end


function _G.error(msg, level)
    local level = level or 2
    local BGC = term.getBackgroundColor()
    local TC = term.getTextColor()
    logwrite("E: " .. msg)
    logwrite("=============================================")
    logwrite("Details:")
    logwrite("    Running:" .. shell.getRunningProgram())
    logwrite("    Level:  " .. level)
    logwrite("=============================================")
    local w, h = term.getSize()
    term.setCursorPos(1, h/2-3)
    term.setBackgroundColor(colors.red)
    term.clearLine()
    paintutils.drawFilledBox(1, h/2-2, w, h/2+2, colors.white)
    term.setCursorPos(1, h/2+3)
    term.setBackgroundColor(colors.red)
    term.clearLine()
    term.setCursorPos(1, h/2-2)
    term.setBackgroundColor(colors.white)
    term.setTextColor(colors.black)
    write(msg)
    term.setBackgroundColor(BGC)
    term.setTextColor(TC)
    sleep(1.5)
    backerror(msg, level)
end

local shutdownx = os.shutdown
local rebootx = os.reboot

function os.reboot()
    local running = shell.getRunningProgram()
    if fs.exists("/accepted.shutdown") then
        local file = fs.open("/accepted.shutdown", "r")
        local freadall = file.readAll()
        file.close()
        if string.find(freadall, running) then
            shutdownx()
        else
            local choice = dialog.yesorno(1, 1, "Do you want to\nregister the\npower list?")
            if choice then
                os.accept("shutdown")
            end
        end
    else
        local choice = dialog.yesorno(1, 1, "Do you want to\nregister the\npower list?")
        if choice then
            os.accept("shutdown")
        end
    end
end

function os.accept(extension)
    local file = fs.open("/accepted." .. extension, "a")
    file.write(shell.getRunningProgram() .. "\n")
    file.close()
end

function os.reboot()
    local running = shell.getRunningProgram()
    if fs.exists("/accepted.shutdown") then
        local file = fs.open("/accepted.shutdown", "r")
        local freadall = file.readAll()
        file.close()
        if string.find(freadall, running) then
            rebootx()
        else
            local choice = dialog.yesorno(1, 1, "Do you want to\nregister the\npower list?")
            if choice then
                os.accept("shutdown")
            end
        end
    else
        local choice = dialog.yesorno(1, 1, "Do you want to\nregister the\npower list?")
        if choice then
            os.accept("shutdown")
        end
    end
end

printx = _G.print
writex = write

function _G.print(...)
    if _G.notprint then
        logwrite("Not print enabled.")
    else
        printx(...)
    end
end

shellrunx = shell.run

function shell.run(...)
    if fs.exists("/accepted.program") then
        local file = fs.open("/accepted.program", "r")
        local freadall = file.readAll()
        file.close()
        if string.find(freadall, ...) then
            shellrunx(...)
        else
            local choice = dialog.yesorno(1, 1, "do you execute third-party program?")
            if choice then
                os.accept("program")
            end
        end
    else
        local file = fs.open("/accepted.program", "a")
        file.write("/startup.lua\n/ui/desktop.lua\n/ui/login.lua\n/ui/create.lua\n/ui/updater.lua")
        file.close()
    end
end

logwrite("internet connecting")


local function main()
    local function text()
        loading_text("Internet connecting...")
    end
    local function connect()
        ok = http.get("https://raw.githubusercontent.com/kazu55/redos")
        if not ok then
            logwrite("internet not connected")
            loading_text("Internet not connected")
        else
            _G.notprint = true
            logwrite("internet connected")
            loading_text("Internet connected.")
            loading_text("Checking update")
            shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
            if runningversion < newver then
                logwrite("Getting update-files list")
                loading_text("Getting update-files list")
                shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/download-files.txt")
            end
            _G.notprint = false
        end
    end
    parallel.waitForAny(text, connect)
end

term.clear()
term.setCursorPos(1, 1)

parallel.waitForAny(textutils.animate_1, main)
term.setCursorPos(1, screen_h/2)
term.clearLine()


term.setTextColor(colors.white)
term.setBackgroundColor(colors.black)
term.clear()



while true do
    logwrite("running /ui/login.lua")
    if not fs.exists("/users") then
        shell.run("/ui/create.lua")
    end
    shell.run("/ui/login.lua")
    if loggeduser then
        logwrite("running /ui/desktop.lua")
        shell.run("/ui/desktop.lua")
        _G.loggeduser = nil
        logwrite("I logged out")
    else
        logwrite("I didn't log in, but I tried to log in. Please Again.")

    end
end