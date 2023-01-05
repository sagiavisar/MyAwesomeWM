local awful = require('awful')
require('awful.autofocus')
local modkey = require('configuration.keys.mod').modKey
local altkey = require('configuration.keys.mod').altKey

local clientKeys =
  awful.util.table.join(
  -- awful.key(
  --   {modkey},
  --   'f',
  --   function(c)
  --     c.fullscreen = not c.fullscreen
  --     c:raise()
  --   end,
  --   {description = 'toggle fullscreen', group = 'client'}
  -- ),
  awful.key(
    {modkey},
    'f',
    function()
      awful.layout.inc(1)
    end,
    {description = 'Select next', group = 'layout'}
  ),
  awful.key(
    {modkey, 'Shift'},
    'f',
    function()
      awful.layout.inc(-1)
    end,
    {description = 'Select previous', group = 'layout'}
  ),
  awful.key(
    {modkey},
    'q',
    function(c)
      c:kill()
    end,
    {description = 'close', group = 'client'}
  )
)

return clientKeys
