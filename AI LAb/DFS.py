def dfs(graph, source, destination):
    STACK = []
    VISITED = set()
    path = []

    STACK.append(source)
    VISITED.add(source)

    while STACK:
        current_node = STACK.pop()

        if current_node == destination:
            path.append(current_node)
            return path
        
        path.append(current_node)

        for neighbor in graph[current_node]:
            if neighbor not in VISITED:
                STACK.append(neighbor)
                VISITED.add(neighbor)

    return None 

graph = {
    '0': set(['1', '2']),
    '1': set(['0', '3', '4']),
    '2': set(['0']),
    '3': set(['1']),
    '4': set(['2', '3'])
}

result_path = dfs(graph, '0', '3')

if result_path:
    print("Shortest path:", result_path)
else:
    print("No path found.")
