require_relative 'board.rb'
require_relative 'pieces.rb'
require_relative 'loader.rb'
require_relative 'checker.rb'

board = Board.new(Loader.new,"board.txt")
