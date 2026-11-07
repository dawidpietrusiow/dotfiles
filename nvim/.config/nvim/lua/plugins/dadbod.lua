return {
	{
		'kristijanhusak/vim-dadbod-ui',
		dependencies = {
			{ 'tpope/vim-dadbod', ft={ 'sql', 'mysql', 'plsql' }, lazy=true },
			{ 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy=true },
		},
		cmd = {
			'DBUI',
			'DBUIToggle',
			'DBUIAddConnection',
			'DBUIFindBuffer',
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1

			-- Global database connection URL
			vim.g.dbs = {
                school = 'postgres://dawid@localhost:5432/TDA357'
            }

			-- Automatically bind the active buffer to 'dev' when opening SQL files
			vim.api.nvim_create_autocmd('FileType', {
				pattern = { 'sql', 'mysql', 'plsql' },
				callback = function()
					vim.b.db = vim.g.dbs.school
				end,
			})

			vim.keymap.set('n', '<leader>db', ':%DB<CR>', { desc = 'Run entire SQL file on active database' })
			vim.keymap.set('v', '<leader>db', ':DB<CR>', { desc = 'Run selected SQL lines on active database' })
			vim.keymap.set('n', '<leader>dr', ':!psql -d TDA357 -f src/runsetup.sql<CR>', { desc = 'Run runsetup.sql' })
		end,
	},
}
