module MatchesHelper

	def winner(match)
		if(match.score_player1 > match.score_player2)
			match.player1.name
		else
			match.player2.name
		end
	end

end
