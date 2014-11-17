IdiomaticCssSnippetsView = require './idiomatic-css-snippets-view'

module.exports =
  idiomaticCssSnippetsView: null

  activate: (state) ->
    @idiomaticCssSnippetsView = new IdiomaticCssSnippetsView(state.idiomaticCssSnippetsViewState)

  deactivate: ->
    @idiomaticCssSnippetsView.destroy()

  serialize: ->
    idiomaticCssSnippetsViewState: @idiomaticCssSnippetsView.serialize()
