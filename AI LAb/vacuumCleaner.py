def clean(current_state, goal_state, cost):
    for item in current_state:
        if current_state[item] > 0:
            print("Cleaning place:", item)
            cost = cost + current_state[item] + 1
            current_state[item] = 0
    if current_state != goal_state:
        #cost = clean(current_state, goal_state, cost)
        return cost
    return cost

current_state = {}
goal_state = {}
n = int(input("Enter the number of Locations: "))

for i in range(n):
    place = input("Enter location name: ")
    state = int(input("Enter the state of the place (0 - Clean, 1 <= Dirty): "))
    current_state[place] = state
    goal_state[place] = 0

cost = -1
final_cost = clean(current_state, goal_state, cost)
print("Total cost of cleaning:", final_cost)
