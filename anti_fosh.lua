local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_fosh'] then
                lock_adds = data[tostring(msg.to.id)]['settings']['lock_fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_adds == "yes" then
        send_large_msg(chat, 'فحش دادن حرام است :D')
        chat_del_user(chat, user, ok_cb, true)
    end
end
end
return {
  patterns = {
   "kir"
   "kos"
   "kon"
   "koni"
   "ننه جنده"
   "کس"
   "کیر"
   "کون"
   "کونی"
   "لاشی"
   "گاییدمت"
  },
  run = run
}
