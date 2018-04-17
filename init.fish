set -q CARGO_HOME; and set -l cargo_bin_path "$CARGO_HOME/bin"
set -q cargo_bin_path; or set -l cargo_bin_path "$HOME/.cargo/bin"

contains -- $cargo_bin_path $PATH
  or set -gx PATH $cargo_bin_path $PATH
