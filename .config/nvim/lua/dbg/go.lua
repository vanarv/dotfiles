local dap = require "dap"


vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}"
    }
}

local function attach()
    print("attaching")
    dap.run({
        type = "go",
        request = "attach",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector'
    })
end

local function attachToRemote() 
    print("attaching")
    dap.run({
        type = "go",
        request = "attach",
        address = "127.0.0.1",
        port = 38697,
        localRoot = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
    })
end

return {
    attach = attach,
    attachToRemote = attachToRemote,
}
