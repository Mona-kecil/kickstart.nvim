-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  vim.cmd [[
    highlight Normal ctermbg=none guibg=none
    highlight NonText ctermbg=none guibg=none
  ]]

  vim.keymap.set('n', '<leader>pv', vim.cmd.Ex),
 
  {
    'supermaven-inc/supermaven-nvim',
    config = function()  require('supermaven-nvim').setup {}
    end,
  },
  {
    'tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git),
  },
}
