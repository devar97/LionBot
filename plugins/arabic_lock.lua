do
local function Dev_ar(msg, matches)
local data = load_data(_config.moderation.data)
local receiver = get_receiver(msg)
local username = msg.from.username
local name = msg.from.first_name
        
if ( msg.text ) and  ( msg.to.type == "chat" ) and not is_momod(msg) then
if data[tostring(msg.to.id)]['settings']['lock_arabic'] == 'yes' then    
 delete_msg(msg.id, ok_cb, true)
local test = "\b"..name.."\n".."🔺اللغة العربيه مقفوله🔻".."\n".."🔹 معرفك : @"..username.."\n"
return test
end
end
  
end

return {
  patterns = {
    "([\216-\219][\128-\191])"
    },
  run = Dev_ar,
}
-- by @Dev_ar
end