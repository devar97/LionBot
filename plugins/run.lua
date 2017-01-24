do-- by @Dev_ar
local function Dev_ar(msg, matches)
local w = matches[1]
if w=="تنشيط" and is_sudo(msg) then
return os.execute("./launch.sh"):read('*all')
elseif w=="تحديث" and is_sudo(msg) then
return io.popen("git pull"):read('*all')
elseif w=="رديس" and is_sudo(msg) then 
return io.popen("redis-server"):read('*all')
end
end
return {
  patterns = {
    "^(تنشيط)",
    "^(تحديث)",
    "^(رديس)",
  },
  run = Dev_ar
}
end
-- by @Dev_ar 
-- The serious :)
