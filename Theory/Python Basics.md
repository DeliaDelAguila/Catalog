# Python Data Structures and Algorithms 

When programmers start writing code, they understand how to store simple variables of integers, and floats, and strings or a collection of them using lists wich are the most common form to store any number of information (strings, integers, ...) that has a certain sequence from the start of the list to the end of the list. You can search, insert, remove or iterate over all the elements with a quite easy way to program, but in the long run it will not give you always the most efficient code.  Given this, the most important part from each data structure is the particular behaviour each one has and how we can use them to optimize particular programs. We will cover five:

## Stack

In stacks, the most recently placed element is the one you take off and when we think about a stack, we really only think about three key operations:

- *push*: Add a new value
- *pop*: Remove the last value added
- *size*: Number of elements in the stack






```python
listOfNumbers = [1, 2, 3, 4, 5, 6]

for number in listOfNumbers:
    if (number % 2 == 0):
        print(number, "is even")
    else:
        print(number, "is odd")
        
print ("All done.")
```




