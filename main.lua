local img = get("boobimg")
local button = get("newbutton")
function generateImage()
    local res = fetch({
        url = "https://nekobot.xyz/api/image?type=boobs",
        method = "GET",
        headers = { ["Content-Type"] = "application/json" },
        body = ""
    })

    local toresize = res["message"]
    print(toresize)
    local urll = "http://tr.operium.org:1112/resizeimg/?imageUrl=" .. toresize .. "&width=500&height=500&quality=50"
    img.set_source(urll)
end

generateImage()

button.on_click(function ()
    generateImage()
end)