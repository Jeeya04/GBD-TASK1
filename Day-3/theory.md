# Python Programming – Theory Answers

---

## 1. What is a recursive function, and how does it differ from an iterative solution?

A recursive function is a function that calls itself to solve a problem by breaking it into smaller sub-problems.

Difference between recursion and iteration:

| Aspect | Recursion | Iteration |
| Method | Function calls itself | Uses loops |
| Control | Function stack | Loop control |
| Example | factorial(n-1) | for / while loop |
| Memory | More memory usage | Less memory usage |

---

## 2. Why is it important to have a base case in a recursive function?

A base case is the stopping condition of recursion.  
Without a base case, the function will call itself infinitely and cause a stack overflow error.

---

## 3. What is a context manager in Python?

A context manager is an object that automatically manages resources using the special methods:
- __enter__()
- __exit__()

It helps in automatic setup and cleanup of resources.

---

## 4. What is the purpose of the `with` statement in Python?

The `with` statement is used to simplify resource management and ensure proper cleanup after execution.

---

## 5. How does the `with` statement help in managing resources like files or network connections?

It automatically:
- Closes files  
- Releases memory  
- Closes connections  
- Handles errors safely  

Even if an exception occurs, resources are released properly.

---

## 6. What is the role of the `__enter__` and `__exit__` methods in a context manager?

__enter__() → Executes when the with block starts  
__exit__() → Executes when the with block ends  

They work together to manage resource initialization and cleanup.

---

## 7. What are the different file modes in Python (r, w, a, rb, wb)?

| Mode | Meaning |
| r | Read |
| w | Write (overwrite) |
| a | Append |
| rb | Read binary |
| wb | Write binary |

---

## 8. What is the difference between `read()`, `readline()`, and `readlines()` methods?

| Method | Function |
| read() | Reads entire file |
| readline() | Reads one line |
| readlines() | Reads all lines into a list |

---

## 9. What is a CSV file, and why is it widely used?

CSV (Comma Separated Values) is a file format used to store tabular data.

Why it is widely used:
- Simple format  
- Lightweight  
- Human readable  
- Compatible with many systems  
- Easy data exchange  

---

## 10. How does Python’s `csv` module help in reading and writing CSV files?

The `csv` module provides:
- csv.reader() for reading CSV files  
- csv.writer() for writing CSV files  

It simplifies CSV file handling in Python.

---

## 11. What is JSON, and how is it different from Python dictionaries?

JSON (JavaScript Object Notation) is a text-based data format used for data exchange.

| JSON | Python Dictionary |
| Text format | Python object |
| Used for data transfer | Used inside Python |
| Language independent | Python specific |

---

## 12. Why is JSON preferred for data exchange in web APIs?

JSON is preferred because it is:
- Lightweight  
- Fast  
- Human readable  
- Language independent  
- Easy to parse  
- Efficient for data transfer  
