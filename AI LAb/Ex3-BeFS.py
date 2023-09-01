
graph = [[(1, 3), (2, 6), (3, 5)],
         [(0, 3), (4, 9), (5, 8)],
         [(0, 6), (6, 12), (7, 14)],
         [(0, 5), (8, 7)],
         [(1, 9)],
         [(1, 8)],
         [(2, 12)],
         [(2, 14)],
         [(3, 7), (9, 5), (10, 6)],
         [(8, 5), (11, 1), (12, 10), (13, 2)],
         [(8, 6)],
         [(9, 1)],
         [(9, 10)],
         [(9, 2)]]

visited = set()
priority_queue = []

def best_first_search(graph, start, goal):
    priority_queue.insert(0, (0, start))

    while priority_queue:
        priority_queue.sort()
        _, current_node = priority_queue.pop(0)
        #print(_, current_node)
        if current_node in visited:
            continue

        print("Visiting:", current_node)
        visited.add(current_node)

        if current_node == goal:
            print("Goal reached!")
            return

        for neighbor, neighbor_cost in graph[current_node]:
            if neighbor not in visited:
                priority_queue.append((neighbor_cost, neighbor))

    print("Goal not reachable!")

best_first_search(graph, 0, 13)
