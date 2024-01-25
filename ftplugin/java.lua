local config = {
    cmd = {"C:/Users/peetu/AppData/Local/nvim-data/mason/bin/jdtls.CMD"},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
