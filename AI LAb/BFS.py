def bfs(graph, node):

    visited = []
    queue = []

    visited.append(node)
    queue.append(node)

    while queue:
        v = queue.pop(0)
        print(v, end="\n")

        for neigh in graph[v]:
            if neigh not in visited:
                visited.append(neigh)
                queue.append(neigh)


dest ={"coimbatore":["erode","avinasi"],"erode":["salem"],"avinasi":["perundurai"],"salem":["chennai"],"perundurai":["chennai"],"chennai":[]}

bfs(dest ,"coimbatore")
