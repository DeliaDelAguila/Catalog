# Python Data Structures and Algorithms 

When programmers start writing code, they understand how to store simple variables of integers, floats, strings or a collection of them using lists which are the most common form to store any number of homogeneous information that has a certain sequence from the start of the list to the end of the list. You can search, insert, remove or iterate over all the elements with a quite easy way to program, but in the long run it will not give you always the most efficient code.  Given this, the most important part from each data structure is the particular behaviour each one has and how we can use them to optimize particular programs. We will cover five:

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


## Queue

Different to the stack, when you add an element to a queue the next to be removed will be the first element added: *First-In, First-Out*. For lists this action is not efficient, while appends and pops from the end of list are fast, doing inserts or pops from the beginning of a list is slow (because all of the other elements have to be shifted by one).

As for stacks, for queues we will have two main operations:

- *append*: Add a new value
- *popleft*: Remove the first value added (if queue is not empty)

In addition, we will use use *collections.deque* which was designed to have fast appends and pops from both ends.


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
>>> queue.popleft(); print(queue)
deque([])
```

![alt text](https://github.com/DeliaDelAguila/Catalog/blob/master/Images/Data%20Structures%20-%20Queue.png "Queue")


## Tuple

The tupples as the lists are sequence data types, where we will not just store the information but also we will process it in some order. 

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



### References

 [Python Docs](https://docs.python.org/3/tutorial/datastructures.html)
 
 Course: Designing Data Structures in Python by George T. Heineman
