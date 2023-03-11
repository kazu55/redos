--Created by ChatGPT.

local function listFiles(dir)
    local files = fs.list(dir)
    local fileList = {}
    for _, file in ipairs(files) do
      if not fs.isDir(fs.combine(dir, file)) then
        table.insert(fileList, file)
      else
        table.insert(fileList, file .. "/")
      end
    end
    return fileList
  end
  
  local function printCentered(text, y)
    local w, h = term.getSize()
    local x = math.floor((w - #text) / 2) + 1
    term.setCursorPos(x, y)
    term.write(text)
  end
  
  
  local ITEMS_PER_PAGE = 10
  
  local function drawFiles(dir, selected, currentPage, pageSize)
    term.setBackgroundColor(colors.black)
    term.clear()
  
    local fileList = listFiles(dir)
  
    local pageStart = (currentPage - 1) * pageSize + 1
    local pageEnd = currentPage * pageSize
  
    for i = pageStart, math.min(pageEnd, #fileList) do
      local file = fileList[i]
      local displayIndex = i - (currentPage - 1) * pageSize
  
      term.setCursorPos(2, displayIndex)
      if i == selected then
        term.setTextColor(colors.white)
        term.setBackgroundColor(colors.blue)
      else
        term.setTextColor(colors.black)
        term.setBackgroundColor(colors.gray)
      end
      term.write(file)
    end
  end
  
  local function handleInput(dir, selected, currentPage, totalPages)
    local event, key = os.pullEvent("key")
    if key == keys.up then
      if selected > 1 then
        selected = selected - 1
        if selected < currentPage then
          currentPage = currentPage - 1
        end
      elseif currentPage > 1 then
        currentPage = currentPage - 1
        selected = ITEMS_PER_PAGE
      end
    elseif key == keys.down then
      if selected < #listFiles(dir) then
        selected = selected + 1
      end
    elseif key == keys.right then
      currentPage = currentPage + 1
      selected = 10 * currentPage - 9
    elseif key == keys.left then
      currentPage = currentPage - 1
      selected = 10 * currentPage - 9
    elseif key == keys.enter then
      local file = listFiles(dir)[selected]
      if fs.isDir(fs.combine(dir, file)) then
        dir = fs.combine(dir, file)
        selected = 1
        currentPage = 1
      else
        shell.run(fs.combine(dir, file))
      end
    elseif key == keys.backspace then
      if dir ~= "/" then
        dir = fs.getDir(dir)
        selected = 1
        currentPage = 1
      end
    elseif key == keys.c then
      local file = listFiles(dir)[selected]
      _G.filename = file
      local file = fs.open(fs.combine(dir, file), "r")
      _G.clipboard = file.readAll()
      file.close()
    elseif key == keys.v then
      local file = fs.open(fs.combine(dir, filename), "w")
      file.write(clipboard)
      file.close()
    elseif key == keys.e then
      local file = listFiles(dir)[selected]
      sleep(0.1)
      shell.run("edit ", fs.combine(dir, file))
    elseif key == keys.d then
      local file = listFiles(dir)[selected]
      fs.delete(fs.combine(dir, file))
    elseif key == keys.q then
      term.setBackgroundColor(colors.black)
      term.clear()
      term.setCursorPos(1, 1)
      sleep(0.1)
      error()
    elseif key == keys.x then
      local file = listFiles(dir)[selected]
      _G.filename = file
      local file = fs.open(fs.combine(dir, file), "r")
      _G.clipboard = file.readAll()
      file.close()
      fs.delete(fs.combine(dir, file))
    elseif key == keys.m then
      term.setBackgroundColor(colors.black)
      term.setTextColor(colors.white)
      term.clear()
      term.setCursorPos(1, 1)
      sleep(0.1)
      print("Input the Folder name.")
      fs.makeDir(fs.combine(dir, read()))
    end
    return dir, selected, currentPage
  end
  
  
  
  local function main()
    local _, h = term.getSize()
    local dir = "/"
    local selected = 1
    local page = 1
    local totalPages = math.ceil(#listFiles(dir) / ITEMS_PER_PAGE)
    while true do
      drawFiles(dir, selected, page, ITEMS_PER_PAGE)
      dir, selected, page = handleInput(dir, selected, page, totalPages)
      totalPages = math.ceil(#listFiles(dir) / ITEMS_PER_PAGE)
      sleep(0)
    end
  end
  
  main()
  