#import 'packages/justfile'

another-recipe:
  @echo 'This is another recipe.'

initialize-bricks:
  mason init .

add-bricks:
  mason add package --path bricks/package
  mason add mono_repo --path bricks/mono_repo
  mason add melos --path bricks/melos

initialize-melos:
  @mason make melos

act:
  act push
