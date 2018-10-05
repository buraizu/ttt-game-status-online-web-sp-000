
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top Row
  [3,4,5],  # Middle Row
  [6,7,8],  # Bottom Row
  [0,4,8],  # Diagonal Right
  [2,4,6],  # Diagonal Left
  [0,3,6],  # Left Column
  [1,4,7],  # Middle Column
  [2,5,8]   # Right Column
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    else
      return false
    end
    end
  end

end
