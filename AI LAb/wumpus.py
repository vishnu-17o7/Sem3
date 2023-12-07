import random

class WumpusWorld:
    def generate_random_position(self, size):
        return random.randint(0, size - 1), random.randint(0, size - 1)

    def percept(self, agent_position, wumpus_position, gold_position, pit_positions):
        x, y = agent_position
        perceptions = []

        if wumpus_position == (x, y):
            perceptions.append('Stench')

        if gold_position == (x, y):
            perceptions.append('Glitter')

        if (x, y) in pit_positions:
            perceptions.append('Breeze')

        return perceptions

    def move(self, agent_position, direction, size):
        x, y = agent_position

        if direction == 'up' and x > 0:
            return x - 1, y
        elif direction == 'down' and x < size - 1:
            return x + 1, y
        elif direction == 'left' and y > 0:
            return x, y - 1
        elif direction == 'right' and y < size - 1:
            return x, y + 1
        else:
            return x, y

    def play(self, size=4):
        agent_position = (0, 0)
        wumpus_position = self.generate_random_position(size)
        gold_position = self.generate_random_position(size)
        pit_positions = [self.generate_random_position(size) for _ in range(3)]

        while True:
            grid = [[' ' for _ in range(size)] for _ in range(size)]
            x, y = agent_position
            grid[x][y] = 'A'

            print('\n'.join([' '.join(row) for row in grid]))
            print(f"Percept: {self.percept(agent_position, wumpus_position, gold_position, pit_positions)}")

            if agent_position == wumpus_position:
                print("Game Over - Wumpus got you!")
                break

            action = input("Enter action (up/down/left/right): ").lower()

            if action in ['up', 'down', 'left', 'right']:
                agent_position = self.move(agent_position, action, size)
            else:
                print("Invalid action. Please enter up, down, left, or right.")
                continue

            if agent_position == gold_position:
                print("Congratulations! You found the gold!")
                break

wumpus_world = WumpusWorld()
wumpus_world.play()
