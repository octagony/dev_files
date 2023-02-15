local git_signs_status, git_signs = pcall(require, "gitsigns")
if not git_signs_status then
	return
end

git_signs.setup({})
