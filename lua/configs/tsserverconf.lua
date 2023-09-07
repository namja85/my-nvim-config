local util = require 'lspconfig.util'

local tsserverconf = {}

local get_typescript_server_path = function(root_dir)

  local handle = io.popen('which node')
  if handle == nil then
    return
  end

  local result = handle:read('*a')
  handle.close()

  local nodePath = util.path.dirname(util.path.dirname(result))

  local global_ts = util.path.join(nodePath, 'lib', 'node_modules', 'typescript', 'lib')
  local found_ts = ''

  local function check_dir(path)
    found_ts =  util.path.join(path, 'node_modules', 'typescript', 'lib')
    if util.path.exists(found_ts) then
      return path
    end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

function tsserverconf.on_new_config(new_config, new_root_dir)
  new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
end

return tsserverconf
