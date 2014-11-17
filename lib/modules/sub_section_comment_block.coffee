subSectionCommentBlock = ->
  # This assumes the active pane item is an editor
  editor = atom.workspace.activePaneItem
  editor.insertText('/* Sub-section comment block\n
     ========================================================================== */\n')

module.exports = subSectionCommentBlock
