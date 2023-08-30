graph = {
    "New York": {"Los Angeles": 2449, "Chicago": 710, "Miami": 1308, "Houston": 1420, "Seattle": 2401},
    "Los Angeles": {"New York": 2449, "Chicago": 1755, "Miami": 2342, "Houston": 1547, "Seattle": 1131},
    "Chicago": {"New York": 710, "Los Angeles": 1755, "Miami": 1190, "Houston": 940, "Seattle": 2064},
    "Miami": {"New York": 1308, "Los Angeles": 2342, "Chicago": 1190, "Houston": 968, "Seattle": 3273},
    "Houston": {"New York": 1420, "Los Angeles": 1547, "Chicago": 940, "Miami": 968, "Seattle": 1891},
    "Seattle": {"New York": 2401, "Los Angeles": 1131, "Chicago": 2064, "Miami": 3273, "Houston": 1891}
}
stack =[]
visited = []

def tsp(graph,start):
    visited.append(start)
    