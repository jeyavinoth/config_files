local status, git = pcall(require, 'git')
if (not status) then return end

git.setup {
    keymaps = {
        -- Open git blame
        blame = "<leader>gb",
        -- Open file in git repository
        browse = "<leader>go",
    }
}
