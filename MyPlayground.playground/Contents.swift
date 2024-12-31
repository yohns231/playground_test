import Foundation

enum Gridposion: String{
    case empty = " "
    case player_1 = "o"
    case player_2 = "x"
}

struct TicTacToe {
    var girdStorage : [[Gridposion]] = []
    var player = 1
    
    init() {
        for _ in 0..<3 {
            girdStorage.append(Array(repeating: .empty, count: 3))
        }
    }
    
    mutating func turn(row row: Int, col col: Int) {
        if girdStorage[row][col] == .empty {
            girdStorage[row][col] = whoisePlayer()
            player += 1
            print(gameStateString())
            checkWin()
        } else {
            print("that place is not empty")
        }
    }
    
    func whoisePlayer() -> Gridposion {
        return player.isMultiple(of: 2) ? .player_2 : .player_1
    }
    
    func gameStateString() -> String {
        var stateString : String = "--------\n"
        for row in self.girdStorage {
            stateString += printalbeString(forRow: row)
            stateString += "--------\n"
        }
        return stateString
    }
    
    func printalbeString(forRow row: [Gridposion]) -> String {
        var rowSting : String = "|"
        for posion in row {
            rowSting += posion.rawValue + "|"
        }
        return rowSting + "\n"
    }

    mutating func checkWin(){
        var checking:Int = 2
        for i in 0..<3 {
            for j in 0..<3 {
                if girdStorage[i][j] == .empty {
                    checking = 0
                }
            }
        }
        for i in 0..<3 {
            if girdStorage[i][0] != .empty && girdStorage[i][0] == girdStorage[i][1] && girdStorage[i][1] == girdStorage[i][2] {
                checking = 1
            }
            if girdStorage[0][i] != .empty && girdStorage[0][i] == girdStorage[1][i] && girdStorage[1][i] == girdStorage[2][i] {
                checking = 1
            }
        }
        if girdStorage[0][0] != .empty && girdStorage[0][0] == girdStorage[1][1] && girdStorage[1][1] == girdStorage[2][2] {
            checking = 1
        }
        if girdStorage[0][2] != .empty && girdStorage[0][2] == girdStorage[1][1] && girdStorage[1][1] == girdStorage[2][0] {
            checking = 1
        }
        
        if checking != 0 {
            player -= 1
            if checking == 1 {
                print("\(whoisePlayer()) win")
            }
            player = 1
            girdStorage = []
            for _ in 0..<3 {
                girdStorage.append(Array(repeating: .empty, count: 3))
            }
        }
        
    }
}

var game = TicTacToe()
game.turn(row: 0, col: 1)
game.turn(row: 1, col: 2)
game.turn(row: 2, col: 1)
game.turn(row: 1, col: 0)
game.turn(row: 2, col: 0)
game.turn(row: 1, col: 2)
game.turn(row: 2, col: 2)
game.turn(row: 1, col: 1)

game.turn(row: 2, col: 1)
game.turn(row: 1, col: 2)
game.turn(row: 2, col: 2)
game.turn(row: 1, col: 1)
game.turn(row: 1, col: 0)
game.turn(row: 2, col: 0)
game.turn(row: 0, col: 2)
game.turn(row: 0, col: 1)
game.turn(row: 0, col: 0)







