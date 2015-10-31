class Board
	def initialize(loader,file)
		@board = Array.new(8) {Array.new(8)}
		@board_file = file
		@loader = loader
	end

	def start
		load_board(@board_file)

	end

	def load_board(file)
		@loader.board_loader(file)
	end

	def check_movements

	end

	def coordenates_converter(string)

	end

	def horizontal_converter(string)

	end

	def vertical_converter(string)

	end





end