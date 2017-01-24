do-- by @Dev_ar
local function Dev_ar(msg,matches)
if matches[1] == "chat_add_user" then 
 local add = "🌹 أهلاً بك عزيزي 🌝❤️\n🎗 اسمك : " ..msg.action.user.first_name.."\n".."🎗 معرفك : @"..(msg.action.user.username or " " ).."\n".."🎗 ايديك : "..msg.action.user.id.."\n💞  قناتنا【 @ar_h97 】 🇮🇶 "
return add 
elseif matches[1] == "chat_add_user_link" then
 local lin = "🌹 أهلاً بك عزيزي 🌝❤️\n🎗 اسمك : " ..msg.from.first_name.."\n".."🎗 معرفك : @"..(msg.from.username or "" ).."\n".."🎗 ايديك : "..msg.from.id.."\n💞  قناتنا【 @ar_h97 】 🇮🇶 "
return lin
end
if matches[1] == "chat_del_user" then
 local bye = "🎗 وداعاً عزيزي 😔❤️ \n🎗 الأسم : "..msg.action.user.first_name.."\n".."🎗 المعرف : @"..(msg.from.username or "").."\n"
return bye 
end
end
return {
patterns = {
 "^!!tgservice (chat_add_user)$",
 "^!!tgservice (chat_add_user_link)$",
 "^!!tgservice (chat_del_user)$"
},
 run = Dev_ar,
}
end
-- by dev : @Dev_ar
-- the Serious :)