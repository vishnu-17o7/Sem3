from constraint import *

# Define the second problem
problem2 = Problem()
problem2.addVariable('x', [1, 2, 3])
problem2.addVariable('y', range(10))

# Define a custom constraint function
def our_constraint(x, y):
    if x + y >= 5:
        return True

# Add the constraint to the second problem
problem2.addConstraint(our_constraint, ['x', 'y'])

# Find solutions to the second problem
solutions2 = problem2.getSolutions()

# Print the solutions in the desired format
length = len(solutions2)
print("(x, y) ∈ {", end="")
for index, solution in enumerate(solutions2):
    if index == length - 1:
        print("({}, {})".format(solution['x'], solution['y']), end="")
    else:
        print("({}, {}),".format(solution['x'], solution['y']), end="")
print("}")