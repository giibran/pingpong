module MatchesHelper

	def winner(match)
		if(match.score_player1 > match.score_player2)
			@players.find(match.id_player1).name
		else
			@players.find(match.id_player2).name
		end
	end

end
