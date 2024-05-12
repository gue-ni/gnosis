# Programming

## Table of Contents

- [Cpp](#cpp)
- [Python](#python)
- [Rust](#rust)
- [Java](#java)

## Cpp

- [cppquiz.org](https://cppquiz.org)
- [cppreference.com](https://en.cppreference.com/w/)

### Editors

#### Visual Studio 2022

[guide](https://docs.microsoft.com/en-us/visualstudio/ide/navigating-code?source=recommendations&view=vs-2022)

| shortcut             | effect                              |
| -------------------- | ----------------------------------- |
| `Ctrl + Q, Ctrl + T` | Search for files, types and members |
| `Ctrl + A, Ctrl + M` | Format file                         |

#### Visual Studio Code

| shortcut           | effect       |
| ------------------ | ------------ |
| `Ctrl + Shift + O` | Go to Symbol |

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

### Embedd String from File

```cpp
#include <iostream>
#include <string>

const std::string shader = R"(
#include "shader.glsl"
)";

int main() {
    std::cout << shader << std::endl;
    return 0;
}
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

## Python

- [pythontips.com](https://book.pythontips.com/)
- [realpython.com](https://realpython.com/)

## How to use venv

```bash
python -m venv venv
source venv/bin/activate
```


### Install dependencies with PIP

`python -m pip install <module>`

