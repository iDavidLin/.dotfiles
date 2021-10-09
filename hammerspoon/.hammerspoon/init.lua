hs.loadSpoon("WindowHalfsAndThirds")

local hyper = {'ctrl', 'cmd'}

-- Windows
hs.hotkey.bind(hyper, "F", function ()
spoon.WindowHalfsAndThirds:maximize()
end)

hs.hotkey.bind(hyper, "H", function ()
spoon.WindowHalfsAndThirds:leftHalf()
end)

hs.hotkey.bind(hyper, "L", function ()
spoon.WindowHalfsAndThirds:rightHalf()
end)
