#import 'packages/justfile'

another-recipe:
  @echo 'This is another recipe.'

initialize-mason:
  mason init .

add-bricks:
  mason add package --path bricks/package
  mason add melos --path bricks/melos

initialize-melos:
  mason make melos --package_name default

act:
  act push

scaffold:
  #!/usr/bin/env zsh
  # Define a list of values to iterate over
  cd packages
  very_good create dart_package flakka --description "A domain model framework and runtime" --force
  # Define a sequence of commands to apply to each item
  # For illustration, let's consider some basic commands like echoing, creating files, and renaming

  # Loop through the list of items
  for item in "${items[@]}"; do
      # Display the current item
      echo "Processing $item"

      # Create a file named after the item
      touch "${item}.txt"

      # Append some text to the file
      echo "This is some content for $item" >> "${item}.txt"

      # Rename the file
      mv "${item}.txt" "${item}_processed.txt"

      # Display a message indicating the item has been processed
      echo "$item has been processed and saved as ${item}_processed.txt"
  done
