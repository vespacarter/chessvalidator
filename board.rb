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

	def show_board
		@board.each_with_index do |row, row_index|
			row.each_with_index do |col, col_index|
				cols = col_index.to_i
				rows = row_index.to_i
				puts "#{rows},#{cols}: #{@board[rows][cols]}"
			end
		end
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
			piece = get_piece_from_board(start_position)
		end
	end

	def get_piece_from_board(position)
		coordenates = position.split("")
		col = position[0].to_i
		row = position[1].to_i
		piece_string = @board[row][col]
		puts "piece is #{piece_string[1]}"
		#piece_string
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