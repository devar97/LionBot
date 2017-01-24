local function Dev_ar(msg, matches)
    local uuser = "mate"..msg.to.id
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if redis:get(uuser) then
    if not is_momod(msg) then
      delete_msg(msg.id, ok_cb, true)
    local warn = "\n"..msg.from.first_name.."\n".."🔺ممنوع ارسال المعرفات🔻".."\n".."🔹 معرفك : @"..msg.from.username.."\n"
    return reply_msg(msg.id, warn, ok_cb, true) 
    end
   end 
    -- by @Dev_ar
 if is_momod(msg) and matches[1]=="قفل اليوزر"    then
    local uuser = "mate"..msg.to.id
    redis:set(uuser,true)
   reply_msg(msg.id, "🛡 تم قفل 🔐 اليوزرنيم 🚀", ok_cb, false) 
    end
     if is_momod(msg) and matches[1]=="فتح اليوزر"    then
    redis:del(uuser)
   reply_msg(msg.id, "🛡 تم فتح 🔓 اليوزرنيم 🚀", ok_cb, false) 
end
    
    
    
end
return {
  patterns = {
"(قفل اليوزر)$" ,
"(فتح اليوزر)$" ,
  "@"
  },
  run = Dev_ar
}
-- by @Dev_ar

