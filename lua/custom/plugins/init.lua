-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  {
    'karb94/neoscroll.nvim',
    opts = {},
  },
  {
    'f-person/git-blame.nvim',
    event = { 'VeryLazy' },
    opts = {
      enabled = false,
      message_template = ' <summary> • <date> • <author> • <<sha>>', -- template for the blame message, check the Message template section for more options
      date_formate = '%d-%m-%Y %H:%M:%S',
    },
  },
}
