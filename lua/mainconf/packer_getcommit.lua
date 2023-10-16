
local function get_commit_number(plugin_name)
    local plugin_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/' .. plugin_name
    local git_dir = plugin_path .. '/.git'
    local git_head_file = git_dir .. '/HEAD'
    local git_head_ref = vim.fn.readfile(git_head_file)[1]
    if string.sub(git_head_ref, 1, 4) == 'ref:' then
        local git_branch = string.sub(git_head_ref, 6)
        local git_branch_file = git_dir .. '/' .. git_branch
        return vim.fn.readfile(git_branch_file)[1]
    else
        return string.sub(git_head_ref, 1, 7)
    end
end

function GetCommit(pluginName)
    print(get_commit_number(pluginName))
end

-- writes the local head commit number in the buffer at cursor position
function WritePluginCommit(pluginName)
    -- Call your Lua function and get its return value
    local return_value = get_commit_number(pluginName)

    -- Get the current cursor position
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))

    -- Insert the return value at the current cursor position
    vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, {return_value})
end

