IdiomaticCssSnippetsView = require './idiomatic-css-snippets-view'

module.exports =
  idiomaticCssSnippetsView: null

  activate: (state) ->
    sectionCommentBlock = require './modules/section_comment_block'
    subSectionCommentBlock = require './modules/sub_section_comment_block'
    doxygenComment = require './modules/doxygen_comment'

    atom.workspaceView.command 'idiomatic-css-snippets:section_comment_block', => sectionCommentBlock()
    atom.workspaceView.command 'idiomatic-css-snippets:sub_section_comment_block', => subSectionCommentBlock()
    atom.workspaceView.command 'idiomatic-css-snippets:doxygen_comment', => doxygenComment()
