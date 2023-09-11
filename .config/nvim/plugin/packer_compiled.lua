-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/villanih/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/villanih/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/villanih/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/villanih/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/villanih/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["boole.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/boole.nvim",
    url = "https://github.com/nat-418/boole.nvim"
  },
  catpuccin = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/catpuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["command_center.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/command_center.nvim",
    url = "https://github.com/FeiyouG/command_center.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-early-retirement"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-early-retirement",
    url = "https://github.com/chrisgrieser/nvim-early-retirement"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-spider"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-spider",
    url = "https://github.com/chrisgrieser/nvim-spider"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-vtsls"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-vtsls",
    url = "https://github.com/yioneko/nvim-vtsls"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pounce.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/pounce.nvim",
    url = "https://github.com/rlane/pounce.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["smartyank.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/smartyank.nvim",
    url = "https://github.com/ibhagwan/smartyank.nvim"
  },
  ["stickybuf.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/stickybuf.nvim",
    url = "https://github.com/stevearc/stickybuf.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-textobj-variable-segment"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/vim-textobj-variable-segment",
    url = "https://github.com/Julian/vim-textobj-variable-segment"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/villanih/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
