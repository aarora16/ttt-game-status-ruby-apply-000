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
    win_ind_1 = combination[0]
    win_ind_2 = combination[1]
    win_ind_3 = comination[2]
    
    pos_1 = board[win_ind_1]
    # p combination
    return combination if winning_combo?(combination)
  end
  return false
end

def winning_combo?(combo, board)
  unique = combo.uniq
  if unique.size == 1 && unique[0] != " "
    return true
  end
  return false
end
p won?(["X", "X", " ", "O", "O", " ", "X", "X", "X"])





