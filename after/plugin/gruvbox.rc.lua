local status, g = pcall(require, 'neosolarized')
if (not status) then return end

g.setup({
  comment_italics = true,
})
