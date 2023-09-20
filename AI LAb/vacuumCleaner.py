def clean(current_state,goal_state):
    for item in current_state:
        print("Cleaning place :",item)
        if current_state[item] > 0:
            current_state[item]=current_state[item] - 1
            


current_state = {}
goal_state = {}
n = int(input("Enter the number of Locations :"))
for i in range(n):
    place = input("Enter location name :")
    state = int(input("Enter the state of the place (0-Clean, 1-Dirty):"))
    current_state[place]=state
    goal_state[place]=0
#print(current_state)
clean(current_state, goal_state)