# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]


def won?(board)
  WIN_COMBINATIONS.each do |combination|
    pos_1 = board[combination[0]]
    pos_2 = board[combination[1]]
    pos_3 = board[combination[2]]
    
    return combination if winning_combo?([pos_1, pos_2, pos_3])
  end
  
  return false
end


def winning_combo?(moves)
  unique = moves.uniq
  
  if unique.size == 1 && unique[0] != " "
    return true
  end
  
  return false
end

# return true if every space on board is filled with "X" or "O" else return false
def full?(board)
  board.each do |move|
    if move != " "
      return true
    end
  end
  return false
end




