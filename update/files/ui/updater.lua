shell.run("wget run https://localhost:81/redos/update/version.txt")
if runningversion < newver then
    print("Getting update files list")
    logwrite("Getting update-files list")
    shell.run("wget run https://localhost:81/redos/update/download-files.txt")
    if not update_downloadfiles then
      error("Download files not Found", 2)
    else
      shell.setDir("/")
      shell.run("wget run https://localhost:81/redos/installer.lua")
    end
end
error("Not Update released")
