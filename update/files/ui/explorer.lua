term.clear()
term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
term.setCursorPos(1, 1)
term.clear()

local function listview(folder)
    return fs.list(folder)
end


running = true

while running do
    term.clear()
    term.setCursorPos(1, 1)
    for i = 1, #listview(shell.dir()) do
        print(listview(shell.dir())[i])
        sleep(0)
    end
    term.write("File name or Folder name:")
    filename = read()
    term.write("Actions (1: delete 2:copy 3:open 4:edit 5:set current directory):")
    action = read()
    if action == "1" then
        fs.delete(filename)
    elseif action == "2" then
        fs.copy(filename, "(copy) " .. filename)
    elseif action == "3" then
        shell.run(filename)
    elseif action == "4" then
        shell.run("edit " .. filename)
    elseif action == "5" then
        shell.run("cd " .. filename)
    end
end