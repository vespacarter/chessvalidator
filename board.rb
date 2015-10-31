class Board
	def initialize(loader,board_file,movements_file)
		@board = Array.new(8) {Array.new(8)}
		@movements = []
		@board_file = board_file
		@movements_file = movements_file
		@loader = loader
	end

	def start
		load_board(@board_file,@board)
		load_movements(@movements_file,@movements)
	end

	def load_board(file,board)
		@loader.board_loader(file,board)
	end

	def load_movements(file,movements)
		@loader.movements_loader(file,movements)
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