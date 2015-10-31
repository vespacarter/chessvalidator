class Board
#	attr_accessor :board, :movements
	def initialize(loader,board_file,movements_file)
		@board = Array.new(8) {Array.new(8)}
		@movements = []
		@board_file = board_file
		@movements_file = movements_file
		@loader = loader
	end

	def start
		load_board(@board_file,@board)
		#show_board()
		load_movements(@movements_file,@movements)
		check_movements()
	end


private
	def load_board(file,board)
		@loader.board_loader(file,board)
	end

	def load_movements(file,movements)
		@movements = @loader.movements_loader(file)
	end

	def check_movements
		@movements.each do |movement|
			move = movement
			move_array = move.split(" ")
			start_position = coordenates_converter(move_array[0])
			end_position = coordenates_converter(move_array[1])
			unless empty_position?(start_position)
				piece = create_piece(start_position)
				status = piece.movement_checker?(start_position,end_position)
				status ? action = "legal" : action = "illegal"
				piece.color == "w" ? color = "White" : color = "Black"
				puts "#{color} #{piece.class} movement from #{move_array[0]} to #{move_array[1]} is #{action}"
			end
		end
	end

	def get_piece_from_board(position)
		col = position[0].to_i
		row = position[1].to_i
		piece_string = @board[row][col]
		piece_string
	end

	def create_piece(position)
		piece = get_piece_from_board(position)
		piece_color = piece[0]
		piece_type = piece[1]
		piece = piece_creator(piece_type,piece_color)
	end

	def piece_creator(type,color)
		piece = {
			"P" => Pawn.new(color),
			"N" => Knight.new(color),
			"B" => Bishop.new(color),
			"R" => Rook.new(color),
			"Q" => Queen.new(color),
			"K" => King.new(color)
		}
		piece[type]
	end

	def empty_position?(position)
		piece = get_piece_from_board(position)
		piece == "--" ? empty = true : empty = false
		empty
	end

	def coordenates_converter(string)
		converted = ""
		array = string.split("")
		row = vertical_converter(array[0])
		col = horizontal_converter(array[1])
		converted = row + col
		converted
	end

	def horizontal_converter(string)
		col = {
			"8" => "0",
			"7" => "1",
			"6" => "2",
			"5" => "3",
			"4" => "4",
			"3" => "5",
			"2" => "6",
			"1" => "7",
		}
		col[string]
	end

	def vertical_converter(string)	
		row = {
			"a" => "0",
			"b" => "1",
			"c" => "2",
			"d" => "3",
			"e" => "4",
			"f" => "5",
			"g" => "6",
			"h" => "7",
		}
		row[string]
	end
end