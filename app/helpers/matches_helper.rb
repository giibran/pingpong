module MatchesHelper

	def winner(match)
		if(match.score_player1 > match.score_player2)
			@players.find(match.player1_id).name
		else
			@players.find(match.player2_id).name
		end
	end

end
