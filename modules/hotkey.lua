local hotkey = require 'hs.hotkey'
local mouse = require 'hs.mouse'
local geometry = require 'hs.geometry'
local eventtap = require 'hs.eventtap'
local timer = require 'hs.timer'
local drawing = require 'hs.drawing'

-- 设置翻译快捷键
hotkey.bind({'alt'}, 's', function()
  hs.eventtap.keyStroke({"cmd"}, "c")
  hs.application.launchOrFocus('网易有道词典.app')
  -- hs.eventtap.keyStroke({"cmd"}, "a")
  hs.eventtap.keyStroke({"cmd"}, "v")
end)
