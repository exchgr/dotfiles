/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
// Your init script
//
// Atom will evaluate this file each time a new window is opened. It is run
// after packages are loaded/activated and after the previous editor state
// has been restored.
//
// An example hack to log to the console when each text editor is saved.
//
// atom.workspace.observeTextEditors (editor) ->
//   editor.onDidSave ->
//     console.log "Saved! #{editor.getPath()}"

'use babel';

atom.packages.onDidActivatePackage((pack) => {
  if (pack.name === 'ex-mode') {
    const Ex = pack.mainModule.provideEx();
    return Ex.registerCommand('Gblame', () =>
      atom.commands.dispatch(
        atom.views.getView(
          atom.workspace.getActiveTextEditor()
        ),
        'better-git-blame:toggle'
      )
    )
  }
})

atom.packages.onDidActivateInitialPackages(() => {
  // Attempt to disable Ruby-style string interpolation after # in double-quoted strings
  const matcherPath = `${atom.packages.resolvePackagePath('bracket-matcher')}/lib/bracket-matcher`
  const BracketMatcher = require(matcherPath)

  BracketMatcher.prototype.isCursorOnInterpolatedString = () => false

  // Hide tree-view on launch
  var workspaceView = atom.views.getView(atom.workspace);
  atom.commands.dispatch(workspaceView, 'tree-view:toggle');
})
