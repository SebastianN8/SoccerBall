-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: February 15
--
-- This program shows a ball with an event listener
-----------------------------------------------------------------------------------------

display.setDefault('background', 0.3, 0, 0.6)
local myText = display.newText("Sebastian N", 600, 600, native.SystemFont, 100)
myText.x = 1024
myText.y = 200

local myImage = display.newImageRect('Assets/Sprites/ball.png', 500, 480)
myImage.x = display.contentCenterX
myImage.y = display.contentCenterY
myImage.id = 'Ball object'

local function objectTouches(event)
	print("Ball Touched")

	return true
end

myImage:addEventListener('touch', objectTouches)
