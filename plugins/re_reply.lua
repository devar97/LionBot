local function abrar(extra, success, result) -- function result 
 local oscar_id = result.from.peer_id 
 local r = extra.r 
 if result.from then 
    if result.from.username then 
       username = result.from.username 
    else 
       username = "nil" 
    end-- by @Dev_ar
 end 
 local msg = result 
 local reply = msg['id'] 
   local text = matches[1]
    local ss97 = text

  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  return reply_msg(msg.id, ss97, ok_cb, true) 
end 


local function Dev_ar(msg, matches) 
 local r = get_receiver(msg) 
 local e = msg['id'] 
 local f = ""
--by @ss_97
  if matches[1] == "كله" and msg.reply_id then 
     msgr = get_message(msg.reply_id, abrar, {r=r, }) 
        return  reply_msg(e, f, ok_cb, true) 

elseif matches[1] == "كول" and (matches[2] ~= 0) and not msg.reply_id then
local ss97 = matches[2]

return ss97



	 end
 end 
return { 
  patterns = { 
    "^(كله)+(.+)$",
    "^(كول)(.*)$",

  }, 
  run = Dev_ar, 
} 

-- by @Dev_ar
    
    

