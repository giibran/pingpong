module MatchesHelper

	def winner(match)
		if(match.player1_id == match.winner_id)
			match.player1.name
		else
			match.player2.name
		end
	end

end
