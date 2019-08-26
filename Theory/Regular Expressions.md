# Regular Expressions

This section covers the basics of Regular Expressions in Python

- **|** Alternation (OR).
- **\*** Repetition 0+
- **\+** Repetition 1+
- **?** Repetition 0 or 1e.
- **{m}** Repetition exactly m times.
- **{m,}** Repetition m or more times.
- **{m,n}** Repetition at least m and not more than n times
- Parentheses **( )** can be used to group items into a single logical item
- A bracket expression **[...]** specifies a character class


 |Use Case|Regex Example|True Input|
 |--------|----------------|------------|
 |Literal|TX|TX|AZ|
 |Special Characters: \[\\^$.\|?*+() |\\$180|$180|
 |Whitespace: \\s|Lorem\\sIpsum|Lorem Ipsusm|
 |Character|[013][FXB]|1X|
 |Character Ranges|[1-4][A-Z]|1X|
 |Character Ranges Combined|[A-Za-z0-9]|i5|
 
