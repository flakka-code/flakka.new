#import 'packages/justfile'

another-recipe:
  @echo 'This is another recipe.'

initialize-bricks:
  mason init .

add-bricks:
  mason add package --path bricks/package



act:
  act push
