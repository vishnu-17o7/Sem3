graph = {"A" :{"B" :2, "E" :3},"B" :{"C":1,"G":9},"E":{"D":6},"C":{},"D":{"G":1}}
hn = {"A":11,"B":6,"C":99,"D":1,"E":7,"G":0}

def astar(start,goal):
    print()
    opened = set()
    closed = set()
    parent = set()
    