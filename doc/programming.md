# Programming

## Table of Contents

- [Java](#java)
- [C/C++](#C%2FC%2B%2B)

## Java

### Eclipse

| shortcut           | effect         |
| ------------------ | -------------- |
| `ctrl + shift + t` | open type      |
| `ctrl + o`         | outline        |
| `ctrl + shift + g` | find usages    |
| `ctrl + t`         | type hierarchy |
| `ctr + shift + r`  | open resource  |
| `ctr + shift + o`  | clean up file  |

## C / Cpp

### Editors

#### Visual Studio 2022

https://docs.microsoft.com/en-us/visualstudio/ide/navigating-code?source=recommendations&view=vs-2022

| shortcut             | effect                              |
| -------------------- | ----------------------------------- |
| `Ctrl + Q, Ctrl + T` | Search for files, types and members |
| ``                   |                                     |

### File Sections

File sections are useful for better readability.

```c
/*==================[inclusions]============================================*/
/*==================[macros]================================================*/
/*==================[type definitions]======================================*/
/*==================[external constants]====================================*/
/*==================[internal constants]====================================*/
/*==================[external data]=========================================*/
/*==================[internal data]=========================================*/
/*==================[external function declarations]========================*/
/*==================[internal function declarations]========================*/
/*==================[external function definitions]=========================*/
/*==================[internal function definitions]=========================*/
/*==================[end of file]===========================================*/
```

### Compiler options

```bash
gcc --std=iso9899:1990 -pedantic -Wall -Wextra -O2 -march=native
```

### Sanitizing

[Clang UndefinedBehaviourSanitizer](https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html)

```bash
clang -fsanitize=undefined,integer,implicit-conversion,null
```

[GCC](https://gcc.gnu.org/onlinedocs/gcc/Instrumentation-Options.html)

```bash
gcc -fsanitize=address,undefined,null
```

### Weird java issue

vscode extension 'Language Support for Java(TM) by RedHat' compiles java files to .class files in the background
which causes the error 'class file has wrong version 62.0, should be 52.0'
