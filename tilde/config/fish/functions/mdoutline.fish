# Get the outline of a markdown file
function mdoutline
  cat $argv | awk '/^#+ /'
end
