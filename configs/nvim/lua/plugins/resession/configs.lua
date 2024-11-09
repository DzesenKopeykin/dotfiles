local function get_session_name()
    local name = vim.fn.getcwd()
    local branch = vim.trim(vim.fn.system("git branch --show-current"))
    if vim.v.shell_error == 0 then
        return name .. branch
    else
        return name
    end
end

local resession = require("resession")

local function save_session()
    resession.save(get_session_name(), { dir = "dirsession", notify = false })
end

local function load_last_session()
    if vim.fn.argc(-1) == 0 then
        name = get_session_name()
        resession.load(name, { dir = "dirsession", silence_errors = true })
    end
end

vim.api.nvim_create_autocmd("VimLeavePre", { callback = save_session })
vim.api.nvim_create_autocmd("VimEnter", { callback = load_last_session })
