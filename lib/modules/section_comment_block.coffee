sectionCommentBlock = ->
  # This assumes the active pane item is an editor
  editor = atom.workspace.activePaneItem
  editor.insertText('/* ==========================================================================\n
     Section Comment Block\n
     ========================================================================== */\n')

module.exports = sectionCommentBlock
