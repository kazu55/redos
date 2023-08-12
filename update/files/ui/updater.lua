shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
if runningversion < newver then
    shell.setDir("/")
    shell.run("wget https://raw.githubusercontent.com/kazu55/redos/main/update/run.lua /update/run.lua")
    os.reboot()
end
error("Not Update released")
