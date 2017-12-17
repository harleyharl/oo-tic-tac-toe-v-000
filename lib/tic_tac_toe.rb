class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # left column
  [1,4,7],  # middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diagonal 1
  [2,4,6]  # Diagonal 2
]

def display_board
   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
   puts "-----------"
   puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
   puts "-----------"
   puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
 end

 def input_to_index(user_input)
  index = user_input.strip.to_i - 1
end

def move(index, player)
  @board[index] = player
end

def position_taken?(index)
 if @board[index] == "X" || @board[index] == "O"
   true
 else (@board[index] != " ") || (@board[index] != "") || (@board[index] != nil)
   false
 end
end


def valid_move?(index)
 @board[index].to_i.between?(0, 9) && !position_taken?(index)
  #   true
  #   #  !position_taken?(index)   # (@board[index])
  # end
end

# def move(board, index, player = "X")
#   @board.to_s[index] = player
#   board
# end


end
