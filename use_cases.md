# Use cases list

## GitHub Copilot

### plugins

* [Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
* [Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)

### inline hints

* sort by tile
* separate id and title
* make id bigger and blue

### shortcuts & UI

* `ctrl+space` - show suggestions
* `ctrl+enter` - accept suggestion
* `⌃ ⌘ I` - Opens the Chat view
* `⌃ L` - Clears the Chat view
* `⌘ ↓` - Moves keyboard focus to the Chat view input box

### agents

* `@workspace` - suggest code from your workspace
* `@vscode` - knows about commands and features in the VS Code editor itself, and can help you use them.
* `@terminal` - has context about the integrated terminal shell and its contents.
  * `@terminal #terminalLastCommand`

### slash commands

* `/explain` - explain the code
  * `app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False`
* `/fix` - fix the code

  ```bash
  # remove db.session.commit() from add()
  # prompt: data is not stored in db
  ```
* `/doc` - show documentation

  ```python
  class Todo(db.Model):
  ```
* `/tests` - run tests

```bash
python -m unittest ./test_app.py
# or
pytest -r  test_app.py
```

* `/chat` - chat with copilot

`add new route to that returns all todos as json`

`rewrite selected function by adding type hints to all variables`

```python
@app.get("/update/<int:todo_id>")
def update(todo_id):
```

### cli


```bash
gh copilot suggest "prompt"
```


