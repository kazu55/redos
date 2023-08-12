shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
if runningversion < newver then
    shell.setDir("/")
    shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/run.lua /update/run.lua")
end
error("Not Update released")
