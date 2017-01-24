
do 
local function pre_process(msg) 
  local user = msg.from.id 
local chat = msg.to.id 
      local abrar = "mate:"..msg.to.id

    if msg.media  and not is_momod(msg) and redis:get(abrar)  then
     local v = "\n"..msg.from.first_name.."\n".."🔺 ممنوع ارسال الوسائط🔻".."\n".."💡 معرفك : @"..msg.from.username.."\n"
     delete_msg(msg.id, ok_cb, false) 
     reply_msg(msg.id, v, ok_cb, true) 
         
end
        return msg 
    end 

local function Dev_ar(msg, matches) 

    if matches[1] == "قفل الوسائط"  and is_momod(msg) then 
                  local abrar = "mate:"..msg.to.id
                    redis:set(abrar, true) 
reply_msg(msg.id, "☑️ تم قفل 🔒 جميع الوسائط 🔕", ok_cb, true) 
elseif matches[1] == "قفل الوسائط" and not is_momod(msg) then 
reply_msg(msg.id, "للمشرفين فقط 🔺🔻", ok_cb, true) 
  elseif is_momod(msg) and matches[1] == "فتح الوسائط" then
      local abrar = "mate:"..msg.to.id
      redis:del(abrar)
reply_msg(msg.id, "☑️ تم فتح جميع الوسائط 🔓🔔", ok_cb, true) 
elseif matches[1] == "فتح الوسائط" and not is_momod(msg) then 
reply_msg(msg.id, "سوالف بال كبار كبد عمري🌝☕️", ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
    "%[(document)%]",
    "%[(photo)%]",
    "%[(video)%]",
    "%[(audio)%]",
  },
run = Dev_ar, 
    pre_process = pre_process 
} 

end
