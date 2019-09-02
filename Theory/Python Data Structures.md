# Python Data Structures

> *This lecture required basic concepts from Python as how to run the terminal and declare objects as lists*

When programmers start writing code, they understand how to store simple variables of integers, floats, strings or a collection of them using lists which are the most common form to store any number of homogeneous information that has a certain sequence from the start of the list to the end of the list. You can search, insert, remove or iterate over all the elements with a quite easy way to program, but in the long run it will not give you always the most efficient code.  Given this, the most important part from each data structure is the particular behaviour each one has and how we can use them to optimize particular programs. We will cover five:

1. [Stack](#stack)
2. [Queue and Deque](#queue-and-deque)
3. [Tuple](#tuple)
4. [Dictionary](#dictionary)
5. [Set](#set)

## Stack

In stacks, the most recently placed element is the one you take off: *Last-In, First-Out*. When we think about a stack we really only think about two key operations:

- *append*: Add a new value
- *pop*: Remove the last value added (if stack is not empty)

```python
>>> stack = []; print(stack)
[]
>>> stack.append('A'); print(stack)
['A']
>>> stack.append('B'); print(stack)
['A', 'B']
>>> stack.pop(); print(stack)
['A']
>>> stack.append('C'); print(stack)
['A', 'C']
```

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/Data%20Structures%20-%20Stack.png "Stack")


## Queue and Deque

Different to the stack, when you add an element to a queue the next to be removed will be the first element added: *First-In, First-Out*. For lists this action is not efficient, while appends and pops from the end of list are fast, doing inserts or pops from the beginning of a list is slow (because all of the other elements have to be shifted by one).

As for stacks, for queues we will have two main operations:

- *append*: Add a new value
- *popleft*: Remove the first value added (if queue is not empty)

```python
>>> from collections import deque
>>> queue = deque([]); print(queue)
deque([])
>>> queue.append('A'); print(queue)
deque(['A'])
>>> queue.append('B'); print(queue)
deque(['A', 'B'])
>>> queue.popleft(); print(queue)
deque(['B'])
```

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/Data%20Structures%20-%20Queue.png "Queue")


Moreover, a deque has the ability to both pop from the left and pop from the right, or insert on the left or insert on the right, so it is a double-ended queue. Using same example:

```python
>>> from collections import deque
>>> queue = deque(['A','B']); print(queue)
deque(['A', 'B'])
>>> queue.popleft(); print(queue)
deque(['B'])
>>> queue.popleft(); print(queue)
deque([])
>>> queue.append('A'); print(queue)
deque(['A'])
>>> queue.appendleft('B'); print(queue)
deque(['B', 'A'])
```

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/Data%20Structures%20-%20Deque.png "Deque")



## Tuple

The tupples as the lists are sequence data types, where we will not just store the information but also we will process it in some order, having position 0 as the first postion of a list or a tuple. 

 In the other hand, opposite to the lists that stores homogeneous values, the tuple is an immutable heterogeneous structure. This means, 

1. Heterogeneous: It could have any number of values and they can be of different types
```python
>>> t = 12345, 54321, 'hello!'; t[0]
12345
```

2. Immutable: Once you have created a tuple you cannot change any of its constituent elements but a tuple can contain mutable objects.
```python
>>> t[0] = 88888

TypeError Traceback (most recent call last)
<ipython-input-23-db6fc9ca6749> in <module>
      1 # Tuple
      2 t = 12345, 54321, 'hello!'; t[0]
      3 t[0] = 88888

TypeError: 'tuple' object does not support item assignment
```

## Dictionary

As we already know, sequences as lists or tuples are indexed by a range of numbers, from our previous example t[0] represents the first element from the object t in contrast dictionaries are indexed by keys. A dictionary is similar to a hash table, which provides an associative lookup giving a certain value for each key: value pairs, with the requirement that the keys are unique (within one dictionary). 

 Tuples can be used as keys if they contain only strings, numbers, or tuples but if a tuple contains any mutable object as a list, it cannot be used as a key since mutable objects can be modified.
```python
>>> tel = {'jack': 4098, 'sape': 4139}; print(tel)
{'jack': 4098, 'sape': 4139}
>>> print(tel['jack'])
4098
```

We can add values to our dictionary, except if we add an existing key or values this won't be added again keeping always unique keys
```python
>>> tel['irv'] = 4127; print(tel)
{'jack': 4098, 'sape': 4139, 'irv': 4127}
>>> tel['irv'] = 4127; print(tel) 
{'jack': 4098, 'sape': 4139, 'irv': 4127}
```

But we can change value associated to a certain key
```python
>>> tel['irv'] = 1000; print(tel) 
{'jack': 4098, 'sape': 4139, 'irv': 1000}
# Get how many pairs our dictionary has
>>> len(tel)
3
```

## Set

A set is an unordered collection with no duplicate elements, contrary to the lists that you can have repetitive elements.
```python
>>> basket = {'apple', 'orange', 'apple', 'pear', 'orange', 'banana'}; print(basket)                     
{'orange', 'banana', 'pear', 'apple'}
```

And this can work not just for "words" but also for characters on a string for getting unique letters
```python
>>> a = set('abracadabra'); print(a)
>>> b = set('alacazam'); print(b)
{'c', 'a', 'd', 'r', 'b'}
{'z', 'c', 'l', 'a', 'm'}
```

In addtion, set objects also support mathematical operations like:
- Union
```python
# Letters in a OR b or both
>>> a | b                              
{'a', 'c', 'r', 'd', 'b', 'm', 'z', 'l'}
```

- Intersection
```python
# Letters in both a AND b
>>> a & b       
{'a', 'c'}
```

- Difference
```python
# Letters in a but NOT in b
>>> a - b
{'r', 'd', 'b'}
```

- Symmetric difference
```python
# Letters in a OR b but NOT BOTH
>>> a ^ b                              
{'r', 'd', 'b', 'm', 'z', 'l'}
```


### References

- [Python Docs](https://docs.python.org/3/tutorial/datastructures.html)
- Course: Designing Data Structures in Python by George T. Heineman
- Book: High Performance Python by Ian Ozsvald; Micha Gorelick
