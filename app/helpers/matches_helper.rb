module MatchesHelper

	def winner(match)
		if(match.player1_id == match.winner_id)
			match.player1.name
		else
			match.player2.name
		end
	end

	def calculate_date(match)
		limit_time = Time.now - 6.day
		if match.created_at.strftime("%d-%m-%Y %H:%M:%S") < limit_time.strftime("%d-%m-%Y %H:%M:%S")
			time_ago_in_words(match.created_at)
		else
			match.created_at.strftime("%d-%m-%Y")
		end
	end

end
