from constraint import *

problem1 = Problem()
problem1.addVariable('a', range(10))
problem1.addVariable('b', range(10))
problem1.addConstraint(lambda a, b: a * 2 == b)
solutions1 = problem1.getSolutions()
print(solutions1)