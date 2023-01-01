_G.window_api = require("/ui/api/window")
_G.runprograms = {}
run = shell.run
newWindow = window_api.new
local w, h = term.getSize()

term.setBackgroundColor(colors.cyan)
term.clear()

local function loading_text(text)
  term.setCursorPos(w / 2 - string.len(text) / 2 + 1, h / 2 + 2)
  term.setBackgroundColor(colors.black)
  term.setTextColor(colors.gray)
  term.clearLine()
  term.write(text)
end

local function taskbar()
  for i = 1, #runprograms do
    term.write(runprograms[i].name)
    term.write(" ")
  end
end

local function edit_file()
  term.setCursorPos(1, 1)
  term.setBackgroundColor(colors.black)
  term.clear()
  term.setTextColor(colors.white)
  print("Please enter the file to edit.")
  name = read()
  shell.run("/rom/programs/edit.lua " .. name)
end

local function run_file()
  term.setCursorPos(1, 1)
  term.setBackgroundColor(colors.black)
  term.clear()
  term.setTextColor(colors.white)
  print("Please enter the run file.")
  name = read()
  shell.run(name)
end


local function animate()
  local frames = {
      {i = false, c = "\129"},
      {i = false, c = "\130"},
      {i = false, c = "\136"},
      {i = true, c = "\159"},
      {i = false, c = "\144"},
      {i = false, c = "\132"},
  }

  local function drawFrame(frame)
      term.setBackgroundColor(colors.gray)
      term.setTextColor(colors.white)
      if frame.i then
          term.setBackgroundColor(colors.white)
          term.setTextColor(colors.gray)
      end
      write(frame.c)
  end
  sleep(0.01)
  while true do
      for i, frame in pairs(frames) do
          term.setCursorPos(w/2, h/2)
          drawFrame(frame)
          sleep(0.25)
      end
  end
end

local function shutdown_script()
  runprograms = {}
  term.clear()
  term.setCursorPos(1, 1)
  term.setTextColor(colors.white)
  loading_text("removing trash")
  shell.run("rm /trash/*")
  if loggeduser == "guest" then
    loading_text("removing guest data")
    shell.run("rm /users/guest/*")
  end
end

function popupMenu(x, y, ...)
  local args = {...}
  local objects = {}
  for i,v in pairs(args) do
          objects[i] = {
                  x = x;
                  y = i + y - 1;
                  text = v;
          }
  end
  for _, option in pairs(objects) do
          term.setCursorPos(option.x, option.y)
          term.write(option.text)
  end
  local _, button, mx, my = os.pullEvent("mouse_click")
  for _, option in pairs(objects) do
          if mx >= option.x and mx < option.x + #option.text
          and my == option.y then
                  return option.text
          end
  end
end



if not settings.get("gui.BackgroundColor") then
  settings.set("gui.BackgroundColor", colors.cyan)
end

term.setBackgroundColor(settings.get("gui.BackgroundColor"))
term.clear()
term.setCursorPos(1, 1)


function _G.runProgram(Apps, x, y, w, h, name)
  logwrite("running " .. Apps)
  if not name then
    name = "Untitled"
  end
  table.insert(runprograms, 1, newWindow(function() run(Apps) end, x, y, w, h, name))
end

if not os.info then
  os.infotext = nil
end

os.inforeaded = false

if term.showMouse then
  term.showMouse(true)
end

function time()
    while true do
        term.setCursorPos(w-string.len(os.date("%H:%M:%S"))-string.len(loggeduser)-1, 1)
        term.write(loggeduser)
        term.write("|")
        print(os.date("%H:%M:%S"))
        sleep(0.5)
    end
end


function start()
    while true do
      w, h = term.getSize()
      local event, var1, var2, var3 = os.pullEventRaw()
      if event == "terminate" then end
      term.setBackgroundColor(settings.get("gui.BackgroundColor"))
      term.clear()
      term.setCursorPos(1, 1)
      window_api.update(runprograms, event, var1, var2, var3)
      term.setCursorPos(1, 1)
      term.setTextColor(colors.lightGray)
      term.setBackgroundColor(colors.gray)
      term.clearLine()
      term.write("\7 ")
      taskbar()
      if event == "mouse_click" and var1 == 1 and var2 == 1 and var3 == 1 then
        sleep(0.1)
        term.setBackgroundColor(colors.gray)
        term.setTextColor(colors.lightGray)
        xa, xy = var2, var3
        
        
        local input = popupMenu(var2,var3+1, "Softwares   ", "Power       ")
        term.setBackgroundColor(colors.black)
        if input == "Softwares   " then
          sleep(0.1)
          term.setBackgroundColor(colors.gray)
          term.setTextColor(colors.lightGray)
          local inputa = popupMenu(xa, xy+1,  "Shell       ", "edit file...", "Run file... ", "explorer    ", "about       ", "Updater     ")
          if inputa == "Shell       " then
            runProgram("shell.lua", var2, var3+2, 26, 10, "Terminal")
          elseif inputa == "edit file..." then
            table.insert(runprograms, 1, newWindow(function() edit_file() end, 1, 3, 26, 10, "FileEditor"))
          elseif inputa == "Run file... " then
            table.insert(runprograms, 1, newWindow(function() run_file() end, 1, 3, 26, 10, "run"))
          elseif inputa == "explorer    " then
            runProgram("/ui/explorer.lua", var2, var3+2, 26, 18, "red file manager")
          elseif inputa == "about       " then
            runProgram("/programs/about.lua", var2, var3+2, 26, 18, "about")
          elseif inputa == "Updater     " then
            runProgram("/ui/updater.lua", var2, var3+2, screen_w, screen_h - 1, "about")
          end
        elseif input == "Power       " then
          term.setBackgroundColor(colors.gray)
          term.setTextColor(colors.lightGray)
          local inputb = popupMenu(xa, xy+1, "Reboot      ", "Shutdown    ", "Sign out    ")
          if inputb == "Reboot      " then
            shutdown_script()
            logwrite("stopping " .. os.version())
            os.reboot()
          elseif inputb == "Shutdown    " then
            shutdown_script()
            logwrite("stopping " .. os.version())
            os.shutdown()
          elseif inputb == "Sign out    " then
            _G.loggeduser = nil
            break
          end
          term.setTextColor(colors.white)
        end
      end
  end
end

local startCol 

logwrite("desktop.lua main-loop started")
parallel.waitForAny(start, time)
logwrite("desktop.lua main-loop stopped")