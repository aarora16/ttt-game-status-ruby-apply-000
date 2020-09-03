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
  for combination in WIN_COMBINATIONS do
    ind_1 = combination[0]
    ind_2 = combination[1]
    ind_3 = combination[2]
    
    pos_1 = board[ind_1]
    pos_2 = board[ind_2]
    pos_3 = board[ind_3]
    
    if ind_1 == "X" && ind_2 == "X" && ind_3 == "X"
      return combination
    else
      return false
    end
  end
end
