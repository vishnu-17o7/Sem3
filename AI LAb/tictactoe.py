def isMovesLeft(b):
    for i in range(3):
        for j in range(3):
            if b[i][j] == '_':
                return True
    return False

def evaluate(b, player, opponent):
    for row in range(3):
        if b[row][0] == b[row][1] == b[row][2]:
            if b[row][0] == player:
                return 10
            elif b[row][0] == opponent:
                return -10
    for col in range(3):
        if b[0][col] == b[1][col] == b[2][col]:
            if b[0][col] == player:
                return 10
            elif b[0][col] == opponent:
                return -10
    if b[0][0] == b[1][1] == b[2][2]:
        if b[0][0] == player:
            return 10
        elif b[0][0] == opponent:
            return -10
    if b[0][2] == b[1][1] == b[2][0]:
        if b[0][2] == player:
            return 10
        elif b[0][2] == opponent:
            return -10
    return 0

def minimax(b, depth, isMax, player, opponent):
    score = evaluate(b, player, opponent)
    if score == 10:
        return score
    if score == -10:
        return score
    if not isMovesLeft(b):
        return 0

    if isMax:
        best = -1000
        for i in range(3):
            for j in range(3):
                if b[i][j] == '_':
                    b[i][j] = opponent
                    best = max(best, minimax(b, depth + 1, not isMax, player, opponent))
                    #print(best)
                    b[i][j] = '_'
        return best
    else:
        best = 1000
        for i in range(3):
            for j in range(3):
                if b[i][j] == '_':
                    b[i][j] = player
                    best = min(best, minimax(b, depth + 1, not isMax, player, opponent))
                    #print(best)
                    b[i][j] = '_'
        return best

def findBestMove(b, player, opponent):
    bestVal = -1000
    bestMove = (-1, -1)
    for i in range(3):
        for j in range(3):
            if b[i][j] == '_':
                b[i][j] = player
                #printBoard(b)
                moveVal = minimax(b, 0, False, player, opponent)
                b[i][j] = '_'
                if moveVal > bestVal:
                    bestMove = (i, j)
                    bestVal = moveVal
    return bestMove

def printBoard(b):
    for row in b:
        print(" ".join(row))

player = 'x'
opponent = 'o'
board = [
    ['_', '_', '_'],
    ['_', '_', '_'],
    ['_', '_', '_']
]

while True:
    printBoard(board)
    row = int(input("Enter the row (0, 1, or 2): "))
    col = int(input("Enter the column (0, 1, or 2): "))
    
    if board[row][col] == '_':
        board[row][col] = player
    else:
        print("Invalid move. Try again.")
        continue

    if evaluate(board, player, opponent) == 10:
        print("You win!")
        break

    if not isMovesLeft(board):
        print("It's a draw!")
        break

    bestMove = findBestMove(board, player, opponent)
    board[bestMove[0]][bestMove[1]] = opponent

    if evaluate(board, player, opponent) == -10:
        print("AI wins!")
        break
