module MatchesHelper

	def winner(match)
		if(match.player1_id == match.winner_id)
			match.player1.name
		else
			match.player2.name
		end
	end

	def calculate_date(match)
		if match.created_at < Time.now - 6.day
			time_ago_in_words(match.created_at)
		else
			match.created_at
		end
	end

end
