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
		puts "Rook start position #{start_position}"
		puts "Rook end position #{end_position}"
	end
end

#reina
class Queen < Piece

end

#rey
class King < Piece

end
