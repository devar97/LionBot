
do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then
            local bss =  msg.from.first_name.."\n".."🔺 ممنوع اعادة التوجيه🔻".."\n".."💡 معرفك : @"..msg.from.username.."\n"
            delete_msg(msg.id, ok_cb, true)
            return bss
        end
    
        return msg
    end
local function mohammed(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل التوجيه' then
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return reply_msg(msg.id, 'تم ☑️ قفل 🔒 اعاده توجيه ✋😽', ok_cb, false)
  elseif is_momod(msg) and matches[1] == 'فتح التوجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
      return reply_msg(msg.id, 'تم ☑️ فتح 🔓 اعاده توجيه ✋😽', ok_cb, false)
end

end

return {
    patterns = {
        '^(قفل التوجيه)$',
        '^(فتح التوجيه)$'
    },
    run = mohammed,
    pre_process = pre_process
}
end
