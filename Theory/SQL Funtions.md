# SQL Functions

This section convers several funtions use for Text, dates and data cleaning. DBeaver has been used to run all follwing examples.

## Text

|Function|Objective|Syntaxis|Example|Example Result|
|--------|---------|--------|-------|--------------|
  |TRIM|Remove spaces or set of characters|TRIM([leading(beginning of string)\|trailing (end of string)\|both] <removing_string> from <main_string>)|trim(trailing 'st' from 'test')|te|
|REGEXP_REPLACE|Replace substrings that match [REGEX](https://github.com/DeliaDelAguila/Catalog/blob/master/Theory/Regular%20Expressions.md)|REGEXP_REPLACE(<main_string>, regex, <replacement_string>,[, flags: i-case insensitive, g-global])|<li>REGEXP_REPLACE('ABC12345xyz','[[:digit:]]','') </li> <li>REGEXP_REPLACE('This  is    a   test   string','( ){2,}',' ')</li>|<li>ABCxyz</li> <li>This is a test string</li>|
