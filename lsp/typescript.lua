return {
  name = 'typescript-language-server',
  cmd = {'typescript-language-server', '--stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'tsconfig.json', 'package.json'}, { upward = true })[1]),
}
