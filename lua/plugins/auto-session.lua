return {
  {
    "rmagatti/auto-session",
    opts = {
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_use_git_branch = nil,
      bypass_session_save_file_types = nil,
      auto_session_enable_last_session = false,
      auto_session_enable_autosave = true,
      auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
      auto_session_allowed_dirs = { "~/projects/*", "~/dev/*" },
      log_level = "error",
      auto_session_suppress_dirs = nil,
    },
  },
}
