-- A global variable for the Hyper Mode
-- This actually binds a modifier-free press of F20 to enter/exit the `k` modal
-- But since F20 doesn't exist on my keyboard, we will map F19 to enter and exit the `k` modal
k = hs.hotkey.modal.new({}, 'F20')

releaseHyper = function()
  k.triggered = true
end

for i = 0,79 do
  local func = function ()
    hs.eventtap.keyStroke({'command', 'option', 'control', 'shift'}, i)
    k.triggered = true
  end
  k:bind({}, i, func)
end

for i = 81,122 do
  local func = function ()
    hs.eventtap.keyStroke({'command', 'option', 'control', 'shift'}, i)
    k.triggered = true
  end
  k:bind({}, i, func)
end

-- for i = 123,126 do
--   local func = function ()
--     hs.eventtap.keyStroke({'command', 'option', 'control', 'shift'}, i)
--     k.triggered = true
--   end
--   k:bind({}, i, func)
-- end

-- HYPER VIM MODE
-- left = function()
--   hs.eventtap.keyStroke({}, 123)
--   k.triggered = true
-- end
-- k:bind({}, 'h', nil, left, nil, left)
--
-- down = function()
--   hs.eventtap.keyStroke({}, 125)
--   k.triggered = true
-- end
-- k:bind({}, 'j', down, nil, down)
--
-- up = function()
--   hs.eventtap.keyStroke({}, 126)
--   k.triggered = true
-- end
-- k:bind({}, 'k', up, nil, up)
--
-- right = function()
--   hs.eventtap.keyStroke({}, 124)
--   k.triggered = true
-- end
-- k:bind({}, 'l', right, nil, right)

-- Enter Hyper Mode when F19 (Hyper/Capslock) is pressed
pressedF19 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F19 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF19 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
-- Pressing F19 (Karabiner Elements maps Caps Lock to F19) calls the `pressedF19` function
-- Releasing F19 calls the `releasedF19` function
f19 = hs.hotkey.bind({}, 'F19', pressedF19, releasedF19)
