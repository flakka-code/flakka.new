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
