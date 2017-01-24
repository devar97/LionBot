local function Dev_ar(msg, matches)   
if not is_owner(msg) or not is_sudo(msg) then
delete_msg(msg.id, ok_cb, false)
local xxx = "العراق واحد كلا للطائفيه 🌝🌸 "
return xxx
end
end-- by @Dev_ar
return {
patterns = {
"^(سني)",
"^(شيعي)",
"^(مسيحي)",
"^(صابئي)",
"^(توحيدي)",
"^(يهودي)",
"^(هندوسي)",
"^(بوذي)",

},
run = Dev_ar,
}

