# SQL Functions

This section convers several funtions use for Text, dates and data cleaning. DBeaver has been used to run all follwing examples.

## Text

|Function|Objective|Syntaxis|Example|Example Result|
|--------|---------|--------|-------|--------------|
  |TRIM|Remove spaces or set of characters|TRIM([leading(beginning of string)\|trailing (end of string)\|both] <removing_string> from <main_string>)|trim(trailing 'st' from 'test')|te|
|REGEXP_REPLACE|Replace substrings that match [REGEX](https://github.com/DeliaDelAguila/Catalog/blob/master/Theory/Regular%20Expressions.md)|REGEXP_REPLACE(<main_string>, regex, <replacement_string>,[, flags: i-case insensitive, g-global])|<li>REGEXP_REPLACE('ABC12345xyz','[[:digit:]]','') </li> <li>REGEXP_REPLACE('This  is    a   test   string','( ){2,}',' ')</li>|<li>ABCxyz</li> <li>This is a test string</li>|
|SIMILAR TO|Pattern matches, similar to LIKE but using [REGEX](https://github.com/DeliaDelAguila/Catalog/blob/master/Theory/Regular%20Expressions.md)|string SIMILAR TO pattern|ID similar to '(P10_\|P110)'|P101, P102, P103, P104, P105, P106, P107, P108, P109, P110|
| left



## Table Order

|Function|Objective|Syntaxis|Example|Example Result|
|--------|---------|--------|-------|--------------|
|LAG|Access a row which comes before the current row| LAG( \<column to get> [,offset: rows to jump [,default_value: in case go upper than available rows]]) OVER ([PARTITION BY partition_expression, ... ] ORDER BY sort_expression [ASC \| DESC])|LAG(userstatus,2) OVER(PARTITION BY userid ORDER BY status_date)|userid - userstatus - previous_userstatus|
|LED|Meanwhile LAG is for previous rows, LED will be for next rows| LED( \<column to get> [,offset: rows to jump [,default_value: in case go upper than available rows]]) OVER ([PARTITION BY partition_expression, ... ] ORDER BY sort_expression [ASC \| DESC])|LED(userstatus,2) OVER(PARTITION BY userid ORDER BY status_date)|userid - userstatus - next_userstatus|
|FIRST VALUE|Get first row in a sorted partition|FIRST_VALUE ( <value to get> [ignore nulls: to ignore nulls])  OVER ( [PARTITION BY partition_expression] ORDER BY sort_expression [ASC \| DESC], ... [rows_range_clause])|first_value(productid ignore nulls) over (partition by userid order by status_date rows between unbounded preceding and unbounded following)|[Reference](http://www.postgresqltutorial.com/postgresql-first_value-function/)|
|ORDER BY CASE|Order based on a given organization|ORDER BY CASE variable WHEN 'Value 1' THEN 1 ELSE 2 END| | |


