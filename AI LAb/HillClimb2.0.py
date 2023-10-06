import random

def calculate_tour_length(tour, graph):
    length = 0
    for i in range(len(tour) - 1):
        length += graph[tour[i]][tour[i+1]]
    length += graph[tour[-1]][tour[0]]  # Return to the starting city
    return length

def hill_climb_tsp(graph, start_city):
    current_tour = [start_city]
    current_length = 0

    # Initialize the current tour randomly
    while len(current_tour) < len(graph):
        next_city = random.choice(list(graph.keys()))
        if next_city not in current_tour:
            current_tour.append(next_city)
            current_length += graph[current_tour[-2]][next_city]

    current_length += graph[current_tour[-1]][start_city]

    improved = True
    while improved:
        improved = False
        for i in range(len(current_tour)):
            for j in range(i + 2, len(current_tour)):
                new_tour = current_tour[:i+1] + list(reversed(current_tour[i+1:j+1])) + current_tour[j+1:]
                new_length = calculate_tour_length(new_tour, graph)
                if new_length < current_length:
                    current_tour = new_tour
                    current_length = new_length
                    improved = True

    return current_tour, current_length

# Define the graph
graph = {
    0: {1: 400, 3: 300, 2: 500},
    1: {2: 300, 0: 400, 3: 500},
    2: {3: 400, 1: 300, 0: 500},
    3: {0: 300, 2: 400, 1: 500}
}

# Starting city
start_city = 0

# Find the shortest tour using Hill Climbing
best_tour, shortest_length = hill_climb_tsp(graph, start_city)

print("Best Tour:", best_tour)
print("Shortest Length:", shortest_length)