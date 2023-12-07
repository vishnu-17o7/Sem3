from constraint import Problem

problem = Problem()

variables = ["S", "E", "N", "D", "M", "O", "R", "Y"]
problem.addVariables(variables, range(10))
def all_different_constraint(S, E, N, D, M, O, R, Y):
    return len(set([S, E, N, D, M, O, R, Y])) == 8

problem.addConstraint(all_different_constraint, variables)

def send_more_money_constraint(S, E, N, D, M, O, R, Y):
    send = 1000 * S + 100 * E + 10 * N + D
    more = 1000 * M + 100 * O + 10 * R + E
    money = 10000 * M + 1000 * O + 100 * N + 10 * E + Y
    return send + more == money

problem.addConstraint(send_more_money_constraint, variables)

solutions = problem.getSolutions()

for solution in solutions:
    print("Solution:")
    for var in variables:
        print(f"{var}: {solution[var]}")
    print()