graph = {
    'S': [['A', 'B'], 'C'],
    'A': ['D', 'E'],
    'B': [],
    'C': [['F', 'G']],
    'D': ['H'],
    'E': [],
    'F': [],
    'G': [],
    'H': []
}

h_value = {
    'S': 0, 'A': 7, 'B': 12, 'C': 13,
    'D': 5, 'E': 6, 'F': 5, 'G': 7, 'H': 2
}

def ao_star(start):
    starter = [start]
    end_point = []
    g = h_value.copy()
    futility = []
    while len(starter) > 0:
        values = []
        node = starter[0]
        if not graph[node]:
            futility.append(node)
        for v in graph[node]:
            if isinstance(v, list):
                values.append(h_value[v[0]] + h_value[v[1]] + 2)
                starter.extend(v)
            else:
                values.append(h_value[v] + 1)
                starter.append(v)
            g[node] = min(values)
        end_point.append(starter.pop(0))
    
    solved = []
    
    while len(end_point) > 0:
        node = end_point[-1]
        if node not in futility:
            values = {}
            for v in graph[node]:
                if isinstance(v, list):
                    name = "-".join([str(element) for element in v])
                    values[name] = g[v[0]] + g[v[1]] + 2
                else:
                    values[v] = g[v] + 1
            g[node] = min(values.values())
            if node == start:
                minpath = [key for key, val in values.items() if val == min(values.values())]
                print(minpath)
        solved.append(end_point.pop())
    print("\nInitial Value of Nodes :",h_value)
    print("\n\nUpdated Cost of nodes :",g)
    print(f"\n\nEfficient path is S-{minpath[0]} with cost({g['S']}).")

ao_star('S')
