# Windows

## Find which `.dll` are loaded by executable

In Visual Studio Command Prompt:

```bash
dumpbin.exe /imports MyApplication.exe
```

## Find Process Locking File or Folder

1. Open _Resource Manager_.
2. Goto _CPU_ Tab.
3. Search for File/Folder in _Asssociated Handles_
4. Right-click and select _End Process_.

## Disable the annoying 'Ding'

Click:

1.  Control Panel
2.  Hardware and Sound
3.  Sound -> Change System Sounds
4.  Set 'Asterisk' and 'Default Beep' to 'None'

## Shortcuts

| Shortcut          | Effect         |
| ----------------- | -------------- |
| `Win + Shift + S` | Create Snippet |

## Fix VMMEM using too much CPU

```bash
wsl --shutdown
```
