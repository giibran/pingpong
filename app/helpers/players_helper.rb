module PlayersHelper
	def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def ask_matches_by_dates(start_date, end_date)
  	start_date = start_date.strftime("%Y-%m-%d %H:%M:%S")
  	end_date = end_date.strftime("%Y-%m-%d %H:%M:%S")
  end

  def statistics_helper(player)
  	player.statistics_by_date(Time.now, 500.days_ago)
  end

end
