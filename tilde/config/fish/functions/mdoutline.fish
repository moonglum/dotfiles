# Get the outline of a markdown file
function mdoutline
  awk '/^#+ /' $argv
end
