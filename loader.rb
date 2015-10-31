class Loader

	def board_loader(file,board)
		board_string = IO.read(file)
		lines_array = board_string.split("\n")
		lines_array.each_with_index do |row, row_index| 
			row_array = row.split(" ")
			row_array.each_with_index do |item, col_index|
			#	puts "row #{row_index}, col #{col_index}, value #{item}" 	
				board[row_index][col_index] = item
			end
		end
	end

	def movements_loader(file)
		movements_string = IO.read(file)
		movements = movements_string.split("\n")
		movements
	end

end