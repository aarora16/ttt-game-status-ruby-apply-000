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
  for each |combination| in WIN_COMBINATIONS
    ind_1 = combination[0]
    ind_2 = combination[1]
    ind_3 = combination[2]
    
    pos_1 = board[ind_1]
    pos_2 = board[ind_2]
    pos_3 = board[ind_3]
    
    if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
      return combination
    else
      false
    end
  end
end