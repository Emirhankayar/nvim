## Debugging the debugger
" Load all the plugins and display the UI.
:lua require("dapui").open()
" Navigate to where you want to place a breakpoint, then set the breakpoint
" with:
:lua require("dap").set_breakpoint()
" Start the program and run until the breakpoint is hit.  Some filetypes have
" many options for running the program, and in that case a menu will be
" displayed for you to choose from.
:lua require("dap").continue()
" Fingers crossed the debugger has stopped the program at your checkpoint!
" You should see information in many of the UI windows, and values displayed
" beside variables in your source code.

" Navigate to the window named `dap-repl-<NUMBER>`, this is where you will enter
" commands to control the debugger.  Enter insert mode and you'll see a `dap> `
" prompt.  Enter `.help` to show a list of commands - I haven't found another
" reference for the commands :(  Continue debugging like you would in GDB or
" dlv.

## Using the debugger
" Load all the plugins and display the UI.
:lua require("dapui").open()
" Navigate to where you want to place a breakpoint, then set the breakpoint
" with:
:lua require("dap").set_breakpoint()
" Start the program and run until the breakpoint is hit.  Some filetypes have
" many options for running the program, and in that case a menu will be
" displayed for you to choose from.
:lua require("dap").continue()
" Fingers crossed the debugger has stopped the program at your checkpoint!
" You should see information in many of the UI windows, and values displayed
" beside variables in your source code.

" Navigate to the window named `dap-repl-<NUMBER>`, this is where you will enter
" commands to control the debugger.  Enter insert mode and you'll see a `dap> `
" prompt.  Enter `.help` to show a list of commands - I haven't found another
" reference for the commands :(  Continue debugging like you would in GDB or
" dlv.
