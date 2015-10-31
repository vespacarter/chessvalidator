class Piece
	def initialize (color)
		@color = color
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

end

#torre
class Rook < Piece
	def movement_checker(start_position,end_position)
		#Rook can only move in horizontal or vertical
		start_col = start_position[0]
		start_row = start_position[1]
		end_col = end_position[0]
		end_row = end_position [0] 
		if start_col == end_col
			movement = "Legal"
		elsif start_row == end_row
			movement = "Legal"
		else
			movement = "Illegal"
		end
		movement
	end
end

#reina
class Queen < Piece

end

#rey
class King < Piece

end
