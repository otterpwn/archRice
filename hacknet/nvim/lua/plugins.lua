packer = require 'packer'

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'nyoom-engineering/oxocarbon.nvim'}
end)
