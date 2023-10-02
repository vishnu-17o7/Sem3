import random

def routelength(tsp, solution):
    routelen = 0
    for i in range(len(solution)):
        routelen += tsp[solution[i - 1]][solution[i]]
    return routelen

def randsoln(tsp):
    cities = list(range(len(tsp)))
    solution = []
    for i in range(len(tsp)):
        randomcity = cities[random.randint(0, len(cities) - 1)]
        solution.append(randomcity)
        cities.remove(randomcity)
    print("\nRandom Solution:", solution)
    print("Random Route Length:", routelength(tsp, solution))
    return solution

def getneighbors(solution):
    neighbors = []
    for i in range(len(solution)):
        for j in range(i + 1, len(solution)):
            neighbor = solution.copy()
            neighbor[i], neighbor[j] = neighbor[j], neighbor[i]
            neighbors.append(neighbor)
    print("\nNeighbors:", neighbors)
    return neighbors

def getbestneighbor(tsp, neighbors):
    bestroutelength = routelength(tsp, neighbors[0])
    bestneighbor = neighbors[0]
    for neighbor in neighbors:
        currentroutelength = routelength(tsp, neighbor)
        if currentroutelength < bestroutelength:
            bestroutelength = currentroutelength
            bestneighbor = neighbor
    return bestneighbor, bestroutelength

def hillclimb(tsp):
    currsoln = randsoln(tsp)
    currroutelength = routelength(tsp, currsoln)
    while True:
        neighbors = getneighbors(currsoln)
        bestneighbor, bestneighborroutelength = getbestneighbor(tsp, neighbors)
        if bestneighborroutelength < currroutelength:
            currsoln = bestneighbor
            currroutelength = bestneighborroutelength
        else:
            break
    return currsoln, currroutelength

tsp = [
    [0, 400, 500, 300],
    [400, 0, 200, 200],
    [500, 200, 0, 100],
    [300, 200, 100, 0]
]

best_solution, best_length = hillclimb(tsp)
print("\nBest Solution:  ", best_solution)
print("Best Route Length:", best_length,"\n")
