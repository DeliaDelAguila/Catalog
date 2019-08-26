# Regular Expressions

This section covers the basics of Regular Expressions in Python

- **|** denotes alternation (either of two alternatives).
- **\*** denotes repetition of the previous item zero or more times.
- **\+** denotes repetition of the previous item one or more times.
- **?** denotes repetition of the previous item zero or one time.
- **{m}** denotes repetition of the previous item exactly m times.
- **{m,}** denotes repetition of the previous item m or more times.
- **{m,n}** denotes repetition of the previous item at least m and not more than n times.
- Parentheses **( )** can be used to group items into a single logical item.
- A bracket expression **[...]** specifies a character class


 |Use Case|Regex Example|True Input|
 |--------|----------------|------------|
 |Literal|TX|TX|AZ|
 |Special Characters: \[\\^$.\|?*+() |\\$180|$180|
 |Whitespace: \\s|Lorem\\sIpsum|Lorem Ipsusm|
 |Character|[013][FXB]|1X|
 |Character Ranges|[1-4][A-Z]|1X|
 |Character Ranges Combined|[A-Za-z0-9]|i5|
 
