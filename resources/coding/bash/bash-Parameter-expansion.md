# Bash Parameter expansion
- http://wiki.bash-hackers.org/syntax/pe#variable_name_expansion
- https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs
## Introduction
One core functionality of Bash is to manage **parameters**.<br>A parameter is an entity that stores values and is referenced by a **name**, a **number** or a **special symbol**.
- parameters referenced by a name are called variables (this also applies to [bash arrays](bash-arrays.md))
- parameters referenced by a number are called positional parameters and reflect the arguments given to a shell
- parameters referenced by a special symbol are auto-set parameters that have different special meanings and uses

For a more technical view what a parameter is and which types exist, [see the dictionary entry for "parameter"](bash-parameter.md).

## Overview

Looking for a specific syntax you saw, without knowing the name?

- [Simple usage](#simple-usage)
    - $PARAMETER
    - ${PARAMETER}
- [Indirection](#Indirection)
    - ${!PARAMETER}
- [Case modification](#Case-modification)
    - ${PARAMETER^}
    - ${PARAMETER^^}
    - ${PARAMETER,}
    - ${PARAMETER,,}
    - ${PARAMETER~}
    - ${PARAMETER~~}
- [Variable name expansion](#Variable-name-expansion)
    - ${!PREFIX*}
    - ${!PREFIX@}
- [Substring removal](#also-for-filename-manipulation!)
    - ${PARAMETER#PATTERN}
    - ${PARAMETER##PATTERN}
    - ${PARAMETER%PATTERN}
    - ${PARAMETER%%PATTERN}
- [Search and replace](#Search-and-replace)
    - ${PARAMETER/PATTERN/STRING}
    - ${PARAMETER//PATTERN/STRING}
    - ${PARAMETER/PATTERN}
    - ${PARAMETER//PATTERN}
- [String length](#String-length)
    - ${#PARAMETER}
- [Substring expansion](#Substring-expansion)
    - ${PARAMETER:OFFSET}
    - ${PARAMETER:OFFSET:LENGTH}
- [Use a default value](#Use-a-default-value)
    - ${PARAMETER:-WORD}
    - ${PARAMETER-WORD}
- [Assign a default value](#Assign-a-default-value)
    - ${PARAMETER:=WORD}
    - ${PARAMETER=WORD}
- [Use an alternate value](#Use-an-alternate-value)
    - ${PARAMETER:+WORD}
    - ${PARAMETER+WORD}
- [Display error if null or unset](#Display-error-if-null-or-unset)
    - ${PARAMETER:?WORD}
    - ${PARAMETER?WORD}