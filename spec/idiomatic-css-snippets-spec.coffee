{WorkspaceView} = require 'atom'
IdiomaticCssSnippets = require '../lib/idiomatic-css-snippets'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "IdiomaticCssSnippets", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('idiomatic-css-snippets')

  describe "when the idiomatic-css-snippets:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.idiomatic-css-snippets')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.commands.dispatch atom.workspaceView.element, 'idiomatic-css-snippets:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.idiomatic-css-snippets')).toExist()
        atom.commands.dispatch atom.workspaceView.element, 'idiomatic-css-snippets:toggle'
        expect(atom.workspaceView.find('.idiomatic-css-snippets')).not.toExist()
