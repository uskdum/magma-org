local function run(msg)
if msg.text == "hi" then
	return "Hi"
end
if msg.text == "Hi" then
	return "Hello "
end
if msg.text == "Hello" then
	return "Hi"
end
if msg.text == "hello" then
	return "Hi"
end
if msg.text == "Salam" then
	return "Salam"
end
if msg.text == "salam" then
	return "Salam"
end
if msg.text == "amir" then
	return "با بابام چه کار داری؟"
end
if msg.text == "Amir" then
	return "چه کارش داری؟"
end
if msg.text == "Bye" then
	return "Bye"
end
if msg.text == "bye" then
	return "Bye"
end
if msg.text == "سلام" then
	return "سلام"
end
if msg.text == "امیر" then
	return "با باباییم چیکار داری؟ "
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
    "^[Hh]i$",
	"^[Hh]ello$",
    "^[Ss]alam$",
    "^[Aa]mir$",
	"^[Bb]ye$",
	"^سلام",
	"^امیر",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
