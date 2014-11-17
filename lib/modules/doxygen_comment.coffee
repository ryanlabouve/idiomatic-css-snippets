doxygenComment =  ->
  # This assumes the active pane item is an editor
  editor = atom.workspace.activePaneItem
  editor.insertText('/**\n
      * Short description using Doxygen-style comment format\n
      *\n
      * The first sentence of the long description starts here and continues on this\n
      * line for a while finally concluding here at the end of this paragraph.\n
      *\n
      * The long description is ideal for more detailed explanations and\n
      * documentation. It can include example HTML, URLs, or any other information\n
      * that is deemed necessary or useful.\n
      *\n
      * @tag This is a tag named \'tag\'\n
      *\n
      * TODO: This is a todo statement that describes an atomic task to be completed\n
      *   at a later date. It wraps after 80 characters and following lines are\n
      *   indented by 2 spaces.\n
      */\n')

module.exports = doxygenComment
