local function get_variables_hash(msg)
  if msg.to.type == 'chat' or msg.to.type == 'channel' then
    return 'chat:bot:variables'
  end
end 

local function get_value(msg, var_name)
  local hash = get_variables_hash(msg)
  if hash then
    local value = redis:hget(hash, var_name)
    if not value then
      return
    else
      return value
    end
  end
end
-- by @Dev_ar

local function list_chats(msg)
  local hash = get_variables_hash(msg)

  if hash then
    local names = redis:hkeys(hash)
    local text = '🚀 الردود المثبته 🚀  \n\n'
    for i=1, #names do
      text = text..'® '..names[i]..'\n'
    end
    return text
	else
	return 
  end
end


local function save_value(msg, name, value)
  if (not name or not value) then
    return "Usage: !set var_name value"
  end
  local hash = nil
  if msg.to.type == 'chat' or msg.to.type == 'channel'  then
    hash = 'chat:bot:variables'
  end
  if hash then
    redis:hset(hash, name, value)
    return '('..name..')\n  ☑️ تم اضافت الرد 🚀 '
  end
end
local function del_value(msg, name)
  if not name then
    return
  end
  local hash = nil
  if msg.to.type == 'chat' or msg.to.type == 'channel'  then
    hash = 'chat:bot:variables'
  end
  if hash then
    redis:hdel(hash, name)
    return '('..name..')\n  ☑️ تم مسح الرد 🚀 ' 
  end
end

local function delallchats(msg)
  local hash = 'chat:bot:variables'

  if hash then
    local names = redis:hkeys(hash)
    for i=1, #names do
      redis:hdel(hash,names[i])
    end
    return "☑️ تم مسح كل الردود 🚀"
	else
	return 
  end
end



-- by @Dev_ar

local function Dev_ar(msg, matches)
 if is_sudo(msg) then
    local name = matches[3]
  local value = matches[4]
  if matches[2] == 'مسح الكل' then
    local output = delallchats(msg)
    return output
  end
  if matches[2] == 'اضف' then
  local name1 = user_print_name(msg.from)
  savelog(msg.to.id, name1.." ["..msg.from.id.."] saved ["..name.."] as > "..value )
  local text = save_value(msg, name, value)
  return text
    elseif matches[2] == 'مسح' then
    local text = del_value(msg,name)
    return text
    end
 end
  if matches[1] == 'الردود' then
    local output = list_chats(msg)
    return output
  else
    local name = user_print_name(msg.from)
    savelog(msg.to.id, name.." ["..msg.from.id.."] used /get ".. matches[1])-- save to logs
local text = get_value(msg, matches[1])
    return reply_msg(msg.id,text,ok_cb,false)
  end
end

return {
  patterns = {
    "^(الردود)$",
    "^(رد) (اضف) ([^%s]+) (.+)$",
    "^(رد) (مسح الكل)$",
    "^(رد) (مسح) (.*)$",
    "^(.+)$",
  },
  run = Dev_ar
}

-- by @Dev_ar