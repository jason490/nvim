local lang = {
    'rust',
    'javascript',
    'zig',
    'go',
    'python',
    'markdown',
    'latex',
    'make',
    'glsl',
    'json',
    'dockerfile',
    'css',
    'csv',
    'cuda',
    'cmake',
    'c', 'cpp', 'html', 'php', 'lua', 'typescript', 'unison', 'tmux',
'gitignore', 'nginx', 'sql', 'yaml', 'xml', 'toml', 'templ', 'gdscript'}

require('nvim-treesitter').install(lang)

vim.api.nvim_create_autocmd('FileType', {
    pattern = lang,
    callback = function()
        -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo[0][0].foldmethod = 'expr'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.treesitter.start()
    end,
})
