require "pry"

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
  index = user_input.to_i - 1
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
  # binding.pry
 index.between?(0, 8) && !position_taken?(index)
end

def turn_count(board)
9 - @board.count(" ")
end
end 
# def turn
# move(index, player)
# position_taken?(index)
# valid_move?(index)
# end
