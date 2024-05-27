# CPP

- [CPP](#cpp)
  - [vscode clangd settings](#vscode-clangd-settings)

## vscode clangd settings

To use vscode with clangd, first run `cmake -DEXPORT_COMPILE_COMMANDS=1 ..`.

```json
{
  "clangd.arguments": [
    "--compile-commands-dir=${workspaceFolder}/build/",
    "--query-driver=/usr/bin/g++",
    "--background-index",
    "--header-insertion=iwyu",
    "--pretty"
  ]
}
```




