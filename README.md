# Objective-C ARC Strong Reference Cycle Example

This repository demonstrates a common issue in Objective-C development: memory leaks caused by strong reference cycles under Automatic Reference Counting (ARC).

The `bug.m` file contains code that creates a strong reference cycle between two objects, preventing their deallocation.  The `bugSolution.m` file shows how to fix this using `weak` references.

## How to Run

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the project.  Observe memory usage (using Instruments, for example) to see the leak in the original code and the correction in the solution.

## Learning Points

* Understanding strong and weak references in ARC is crucial for avoiding memory leaks in Objective-C.
* Carefully consider object relationships to detect potential strong reference cycles.