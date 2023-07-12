local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh' }
   options.launch_menu = {
      { label = 'PowerShell Core', args = { 'pwsh' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
      {
         label = 'Git Bash',
         args = { 'bash.exe' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Nushell', args = { '/usr/local/bin/nu' } },
      { label = 'Zsh', args = { 'zsh' } },
   }
end

return options
