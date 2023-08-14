-- http://www.computercraft.info/forums2/index.php?/topic/18815-customizable-installer-program on CC Forums
-- CWCOS and its installer is licensed under the BSD 3-Clause License.
-- Copyright (c) 2014 ClassCoder
-- See the license at http://opensource.org/licenses/BSD-3-Clause.
-- Various functions with minor indentation modification
-- http://www.computercraft.info/forums2/index.php?/topic/460-how-to-center-text/page__view__findpost__p__29484
-- これはClassCoderさんが作ったものになります。

local function centerText(text)
  local x,y = term.getSize()
  local x2,y2 = term.getCursorPos()
  term.setCursorPos(math.ceil((x / 2) - (text:len() / 2)), y2)
  write(text)
end
-- http://www.computercraft.info/forums2/index.php?/topic/460-how-to-center-text/page__view__findpost__p__70667
local function centerTextXY(text)
  local w, h = term.getSize()
  term.setCursorPos(math.floor(w / 2 - text:len() / 2 + .5), math.floor(h / 2 + .5))
  io.write(text)
end
-- OS Config
os_name = "Redsystem"
os_version_major = 0
os_version_minor = 0
os_version_revision = 0
os_version_abr = "none"
license_url = ""
github_repo = "kazu55/redos/main"
-- Terminal clearers
function clearTermWName(fg, bg)
  colorTerm(fg, bg)
  term.clear()
  term.setCursorPos(1, 1)
  centerText(os_name.." Installer")
  term.setCursorPos(1, 2)
end
function clearTerm()
  term.clear()
  term.setCursorPos(1, 1)
end
function resetTerm()
  colorTerm(colors.white, colors.black)
  clearTerm()
  term.setCursorPos(1, 1)
end
-- Terminal colorer
function colorTerm(fg, bg)
  term.setTextColor(fg)
  term.setBackgroundColor(bg)
end
-- Wait for a scancode
function waitForScanCode(code)
  local waiting = true
  while waiting do
    local event, scancode = os.pullEvent("key")
    if scancode == code then
      waiting = false
    end
  end
end

-- Loading screen - black fg and gray bg
colorTerm(colors.black, colors.gray)
clearTerm()
centerTextXY(os_name.." Installer")
local sizex, sizey = term.getSize()
term.setCursorPos(1, sizey)
centerText("Loading...")
term.setCursorPos(1, 1)
-- sleep(3) 不要なsleep
local install_to = "/"
clearTermWName(colors.white, colors.cyan)
print("Install Path: "..install_to)
print("You will first need to accept the license at")
print(license_url)
print("before installation.")
term.setCursorPos(1, sizey-2)
centerText("Press enter to select")
term.setCursorPos(1, sizey)
colorTerm(colors.white, colors.green)
centerText("   Accept   ")
waitForScanCode(28)
clearTermWName(colors.white, colors.green)
centerTextXY("Downloading file list from GitHub")
local install_files = textutils.unserialize(http.get("https://raw.githubusercontent.com/"..github_repo.."/install_files.textutils").readAll())
for topath, url in pairs(install_files) do
  clearTermWName(colors.white, colors.green)
  centerTextXY("Downloading "..url)
  local downloader = http.get(url)
  local download = downloader.readAll()
  downloader.close()
  fs.makeDir(install_to.."/"..topath)
  fs.delete(install_to.."/"..topath)
  if fs.exists(install_to.."/"..topath) then
    fs.delete(install_to.."/"..topath)
  end
  local file = fs.open(install_to.."/"..topath, "w")
  file.write(download)
  file.close()
end
resetTerm()
