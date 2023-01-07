shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/version.txt")
if runningversion < newver then
    print("Getting update files list")
    logwrite("Getting update-files list")
    shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/update/download-files.txt")
    if not update_downloadfiles then
      error("Download files not Found", 2)
    else
      shell.setDir("/")
      shell.run("wget run https://raw.githubusercontent.com/kazu55/redos/main/installer.lua")
    end
end
error("Not Update released")
