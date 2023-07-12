local platform = require('utils.platform')()

local wsl_domains = {}
if platform.is_win then
   -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
   wsl_domains = {
      {
         name = 'WSL:Ubuntu',
         distribution = 'Ubuntu',
         username = '',
         default_cwd = '/home/{username}',
         default_prog = { 'fish' },
      },
   }
end


return {
   -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
   ssh_domains = {},

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},

   wsl_domains = wsl_domains,
}
