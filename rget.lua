local args= {...}

if #args == 0 then
  write("The user : ")
  username = read()
  write("Repository name : ")
  repository = read()
  write("Branch : ")
  branch = read()
  write("Path to file : ")
  path = read()
  write("Name of destination file : ")
  destFile = read()

  shell.run("wget https://raw.githubusercontent.com/" .. username .. "/" .. repository .. "/" .. branch .. "/" .. path .. " " .. destFile)
else
  for i, arg in ipairs(args) do
    if i == 1:
      username = arg
    elseif i == 2:
      repository = arg
    elseif i == 3:
      branch = arg()
    elseif i == 4:
      path = arg
    elseif i == 5:
      destFile = arg
    end
    
  shell.run("wget https://raw.githubusercontent.com/" .. username .. "/" .. repository .. "/" .. branch .. "/" .. path .. " " .. destFile)
end
 
print("The file has been downloaded from web.")
