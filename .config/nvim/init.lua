if vim.g.vscode then
    -- VSCode extension
    print("loaded vscode nvim config")
else
    -- ordinary Neovim
    local options = { noremap = true }
    vim.keymap.set("i", "jj", "<Esc>", options)
    print("loaded ordinary nvim config")
end
