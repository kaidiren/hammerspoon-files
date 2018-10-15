local hotkey = require 'hs.hotkey'
local window = require 'hs.window'

-- 把屏幕拖到左边
hotkey.bind({'alt'}, 'left', function()
    local w = window.focusedWindow()
    if not w then
        return
    end
    local s = w:screen():toWest()
    if s then
        w:moveToScreen(s)
        local frame = s:frame()
        w:move(frame)
        local size = w:size()
        size.h = frame.h
        size.w = frame.w
        w:setSize(size)
    end
end)

-- 把屏幕拖到右边
hotkey.bind({'alt'}, 'right', function()
    local w = window.focusedWindow()
    if not w then
        return
    end
    local s = w:screen():toEast()
    if s then
        local frame= s:frame()
        w:move(frame)
        local size = w:size()
        size.h = frame.h
        size.w = frame.w
        w:setSize(size)
    end
end)
