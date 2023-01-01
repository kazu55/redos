--By Konlab Group 
--thanks for using DiaAPI  version: 1.2
--Config:
doesclear = true --if you want to clear dialogbox after using then value set to true
function cleardia(type,x,y)--type:1-errordialog2:yesorno dialog3:acceptdialog
    if doesclear == true then
    term.setBackgroundColor(colors.black)
    term.setCursorPos(x,y)
    term.write("               ")
    term.setCursorPos(x,y+1)
    term.write("               ")
    term.setCursorPos(x,y+2)
    term.write("               ")
    term.setTextColor(colors.white)
    
      if type == 1 then
      term.setCursorPos(x,y+3)
      term.write("               ")
      end
    end
end      
function errdialog(x,y,txt)
  
  while true do
  term.setCursorPos(x,y)
  term.setBackgroundColor(colors.blue)
  term.setTextColor(colors.red)
  term.write(" Error         ")
  term.setTextColor(colors.black)
  term.setCursorPos(x,y+1)
  term.setBackgroundColor(colors.white)
  term.write("               ")
  term.setCursorPos(x,y+1)
  
  term.write(txt)--txt must be 15 or less chars long!!!
  term.setCursorPos(x,y+2)
  term.write("               ")
  term.setCursorPos(x,y+3)
  term.write("     ")
  term.setBackgroundColor(colors.orange)
  term.write(" OK ")
  term.setBackgroundColor(colors.white)
  term.write("      ")
  event,button,xq,yq = os.pullEvent("mouse_click")
  if button == 1 and xq > x+4 and xq < x+9 and yq == y+3 then
  
    cleardia(1,x,y)   
    return
  end
  end
end
function yesorno(x,y,txt,title)
  while true do
  term.setCursorPos(x,y)
  term.setBackgroundColor(colors.blue)
  term.setTextColor(colors.red)
  term.write("               ")
  term.setCursorPos(x,y)
  term.write(title)--title must be 15 or less chars long
  term.setCursorPos(x,y+1)
  term.setBackgroundColor(colors.white)
  term.setTextColor(colors.black)
  term.write("               ")
  term.setCursorPos(x,y+1)
  term.write(txt)--txt must be 15 or less chars long
  term.setCursorPos(x,y+2)
  term.write("   ")
  term.setBackgroundColor(colors.green)
  term.write("Yes")
  term.setBackgroundColor(colors.white)
  term.write("   ")
  term.setBackgroundColor(colors.red)
  term.write("No")
  term.setBackgroundColor(colors.white)
  term.write("    ")
  event,button,xw,ye = os.pullEvent("mouse_click")
  if button == 1 and xw > x+2 and xw < x+6 and ye == y+2 then
    cleardia(2,x,y)  
    return true
  elseif button == 1 and xw > x+8 and xw < x+11 and ye == y+2 then
    cleardia(2,x,y)
    return false
  end    
  end
end
function acceptdia(x,y,txt,title)
  term.setCursorPos(x,y)
  term.setBackgroundColor(colors.blue)
  term.write("Accept?       x")
  term.setBackgroundColor(colors.white)
  term.setCursorPos(x,y+1)
  term.write("               ")
  term.setCursorPos(x,y+1)
  term.write(txt)
  term.setCursorPos(x,y+2)
  term.write("    ")
  term.setBackgroundColor(colors.yellow)
  term.write("Accept")
  term.setBackgroundColor(colors.white)
  term.write("     ")
  while true do
    event,button,xr,yr = os.pullEvent("mouse_click")
    if button == 1 then
      if xr > 5 and xr < 12 and yr == y+2 then
        
        cleardia(3,x,y)
        
        return true
      elseif xr == x+14 and yr == y then
        cleardia(3,x,y)
        return false
      end 
    end
  end
end