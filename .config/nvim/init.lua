-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

function RunCurrentFile()
  local file = vim.fn.expand("%:p")
  local filename = vim.fn.expand("%:t:r") -- filename without extension
  local ext = vim.fn.expand("%:e")
  local cmd = ""

  if ext == "c" then
    cmd = string.format("gcc '%s' -o /tmp/%s && /tmp/%s", file, filename, filename)
  elseif ext == "cpp" then
    cmd = string.format("g++ '%s' -o /tmp/%s && /tmp/%s", file, filename, filename)
  elseif ext == "py" then
    cmd = string.format("python3 '%s'", file)
  elseif ext == "js" then
    cmd = string.format("node '%s'", file)
  elseif ext == "asm" then
    cmd = string.format(
      "nasm -f elf64 '%s' -o /tmp/%s.o && ld /tmp/%s.o -o /tmp/%s && /tmp/%s",
      file,
      filename,
      filename,
      filename,
      filename
    )
  else
    vim.notify("Unsupported file type: " .. ext, vim.log.levels.ERROR)
    return
  end

  require("toggleterm.terminal").Terminal
    :new({
      cmd = cmd,
      direction = "float",
      close_on_exit = false,
      hidden = true,
      cwd = vim.fn.getcwd(),
    })
    :toggle()
end
