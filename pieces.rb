class Piece
	def initialize (color)
		@color = color
	end

	def coordenates_deconstructor(start_position,end_position)
		@start_col = start_position[0].to_i
		@start_row = start_position[1].to_i
		@end_col = end_position[0].to_i
		@end_row = end_position [1].to_i
	end
end


#peon
class Pawn < Piece

end

#caballo
class Knight < Piece

end

#alfil
class Bishop < Piece
	def movement_checker?(start_position,end_position)
		coordenates_deconstructor(start_position,end_position)
		#Bishop moves diagonally
		if ((@start_col - @end_col)**2) == ((@start_row - @end_row)**2)
			movement = true
		else
			movement = false
		end
		movement
	end
end

#torre
class Rook < Piece
	def movement_checker?(start_position,end_position)
		coordenates_deconstructor(start_position,end_position)
		#Rook moves in horizontal or vertical
		if @start_col == @end_col
			movement = true
		elsif @start_row == @end_row
			movement = true
		else
			movement = false
		end
		movement
	end
end

#reina
class Queen < Piece
	def movement_checker?(start_position,end_position)
		coordenates_deconstructor(start_position,end_position)
		#Queen moves horizontal, vertical, and diagonally
		if @start_col == @end_col
			movement = true
		elsif @start_row == @end_row
			movement = true
		elsif ((@start_col - @end_col)**2) == ((@start_row - @end_row)**2)
			movement = true
		else
			movement = false
		end
		movement
	end
end

#rey
class King < Piece

end
