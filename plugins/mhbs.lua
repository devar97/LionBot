do-- by @Dev_ar
local function Dev_ar(msg, matches)   
local reply_id = msg['id']
local star = "on" ..msg.to.id
local game = {"a","b","c","d",}
local chose = game[math.random(#game)]
local la = ("لقد خسـ❌ـرت . المحبـ💍ـس في "..chose)
local win = "مبرووووك لقد ربحت ☺️"
if is_momod(msg) and matches[1]=="بدء اللعبه" then
local start = "اختر عضمه 😉☺️\n..A..  ..B..  ..C.. ..D\n👊.. 👊.. 👊..👊\n"
local star = "on" ..msg.to.id
redis:set(star,true)
reply_msg(reply_id, start, ok_cb, false) 
end
if is_momod(msg) and matches[1]== "انهاء اللعبه" then
local en = "انتهت اللعبه عزيزي"
redis:del(star)
reply_msg(reply_id, en, ok_cb, false) 
end-- by @Dev_ar
--------------------------------------------------------------------------------------
if is_momod(msg) and msg.text == "a" and redis:get(star) then
if chose =="a" then
reply_msg(reply_id, win, ok_cb, false) 
else
reply_msg(reply_id, la, ok_cb, false) 
end end
if is_momod(msg) and msg.text == "b" and redis:get(star) then
if chose =="b" then
reply_msg(reply_id, win, ok_cb, false) 
else
reply_msg(reply_id, la, ok_cb, false) 
end end
if is_momod(msg) and msg.text == "c" and redis:get(star) then
if chose =="c" then
reply_msg(reply_id, win, ok_cb, false) 
else
reply_msg(reply_id, la, ok_cb, false) 
end end
if is_momod(msg) and msg.text == "d" and redis:get(star) then
if chose =="d" then
reply_msg(reply_id, win, ok_cb, false) 
else
reply_msg(reply_id, la, ok_cb, false) 
end end
end
return {
patterns = {
"^(بدء اللعبه)$",
"^(انهاء اللعبه)$",
"^(a)$",
"^(b)$",
"^(c)$",
"^(d)$",
},
run = Dev_ar,
}
end
-- by @Dev_ar