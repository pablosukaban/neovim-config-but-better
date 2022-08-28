local status, ts_auto = pcall(require, 'nvim-ts-autotag')
if (not status) then return end

ts_auto.setup {}
