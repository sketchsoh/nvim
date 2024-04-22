return {
  {
    "stevearc/conform.nvim",
    opts = {
      log_level = vim.log.levels.TRACE,
      formatters = {
        csharpier = {
          args = { "--write-stdout", "--no-cache", "$FILENAME" },
        },
      },
    },
  },
}
