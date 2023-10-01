# awesomewm-definitions
Lua Definitions for AwesomeWM

# Installation

Create a folder in a global, generic path, for example: /src/lua-definitions

git clone this repo under this generic path, so it ends up like: /src/lua-definitions/awesomewm-definitions (this will be used in the settings.json noted below)

[Get vscode](https://code.visualstudio.com/download)

Under extensions, [find the sumneko 'lua' extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)

Open your ~/.config/awesome/ folder as a workspace

Create a new folder called .vscode/

Inside .vscode/ create a file called settings.json

Inside it, add these settings, changing the c:\lua-definitions\eqemu-definitions path to where you cloned this repository
```json
{
    "Lua.runtime.version": "Lua 5.1",
    "Lua.workspace.library": [
        "/src/lua-definitions/awesomewm-definitions"
    ],
    "Lua.diagnostics.disable": [
        "lowercase-global"
    ],
}
```

That's it!

If you find errors you can report them in issues or ping Xackery on discord


