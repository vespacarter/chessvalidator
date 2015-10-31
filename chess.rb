require_relative 'board.rb'
require_relative 'pieces.rb'
require_relative 'loader.rb'
require_relative 'checker.rb'

myboard = Board.new(Loader.new,"board.txt","movements.txt")
myboard.start
