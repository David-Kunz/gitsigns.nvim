local config = require('gitsigns.config').config
local Hunk = require('gitsigns.hunks').Hunk

return function(
   fa, fb,
   algorithm, indent_heuristic)

   if config.diff_opts.internal then
      return require('gitsigns.diff_int').run_diff(fa, fb, algorithm, indent_heuristic)
   else
      return require('gitsigns.diff_ext').run_diff(fa, fb, algorithm, indent_heuristic)
   end
end
