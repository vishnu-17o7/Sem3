graph = {

'S':[['A','B'],'C'],'A':['D','E'],'B':[],'C':[['F','G']],

'D':['H'],'E':[],'F':[],'G':[],'H':[]}


h_value = {

'S':0,'A':7,'B':12,'C':13,

'D':5,'E':6,'F':5,'G':7,'H':2}


def AO_STAR(start):

    starter = []

    starter.append(start)

    end_point = []

    g = {}

    g = h_value.copy()

    futility = []

    while len(starter) > 0:

        values = []

        node = starter[0]

        if not graph[node]:

            futility.append(node)

        for v in graph[node]:

            if isinstance(v ,list):

                values.append(h_value[v[0]] + h_value[v[1]] + 2)

                starter.extend(v)

            else:

                values.append(h_value[v] + 1)

                starter.append(v)

            g[node] = min(values)

        end_point.append(starter.pop(0))

        print("\nINITIALLY DEFINED VALUES:\n")

        print(g)

        #display_graph(g)

        print("\n\nFUTILITY NODES:\n", futility)

        solved = []

        while len(end_point)>0:

            node = end_point[-1]

            if node not in futility:

                values = {}

                for v in graph[node]:

                    if isinstance(v,list):

                        name = "-".join([str(element) for element in v])

                        values[name] = g[v[0]] + g[v[1]] + 2

                    else:

                        values[v] = g[v] + 1

                    g[node] = min(values.values())

                    if(node == start):

                        minpath = [key for key, val in values.items() if val == min(values.values())]

            solved.append(end_point.pop())

    print("\n\nFUTILITY NODES WITH THEIR RESPECTIVE COSTS:\n")

    print(g)

    #display_graph(g)

    print(f"\n\nEFFICIENT PATH IS S-{minpath[0]} WITH COST({g['S']}).")

AO_STAR('S')
