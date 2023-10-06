graph = {
    "A": {"B": 2, "E": 3,},
    "B": {"C": 1, "G": 9},
    "E": {"D": 6},
    "C": {},
    "D": {"G": 1},
    "G" : {}
}

hn = {"A": 11, "B": 6, "C": 99, "D": 1, "E": 7, "G": 0}

def astar(start, goal):
    opened = set()
    closed = set()
    parents = {}  
    g_scores = {node: float('inf') for node in graph}  
    f_scores = {node: float('inf') for node in graph}  
    g_scores[start] = 0
    f_scores[start] = hn[start]

    opened.add(start)

    while opened:
        current = None
        min_f_score = float('inf')

        for node in opened:
            if f_scores[node] < min_f_score:
                min_f_score = f_scores[node]
                current = node
        #current = min(opened, key=lambda node: f_scores[node])

        if current == goal:
            
            path = []
            while current in parents:
                path.insert(0, current)
                current = parents[current]
            path.insert(0, start)
            return path

        opened.remove(current)
        closed.add(current)

        for neighbor, cost in graph[current].items():
            #print("Current :", graph[current].items())
            if neighbor in closed:
                continue

            tentative_g_score = g_scores[current] + cost
            if tentative_g_score < g_scores[neighbor]:
                parents[neighbor] = current
                g_scores[neighbor] = tentative_g_score
                f_scores[neighbor] = g_scores[neighbor] + hn[neighbor]
                if neighbor not in opened:
                    opened.add(neighbor)

    return None  

start_node = "A" 
goal_node = "G"
result = astar(start_node, goal_node)
if result:
    print("Path found:", " -> ".join(result))
else:
    print("Path not found")
