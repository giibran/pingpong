class Player < ActiveRecord::Base

  validates_uniqueness_of :name
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :name, presence: true

  def matches
    Match.where("player1_id = ? OR player2_id = ?", id, id)
  end

  def statistics_by_date(start_date, end_date)
    statistics = {}
    matches_filtered = self.matches.where("matches.created_at BETWEEN '#{end_date}' AND '#{start_date}'")
    statistics["wins"] = matches_filtered.where(:winner_id => self.id).count
    statistics["matches_played"] = matches_filtered.count
    statistics["losses"] = matches_filtered.count - matches_filtered.where(:winner_id => self.id).count
    statistics["win_ratio"] = (statistics["wins"] * 100.0) / matches_filtered.count
    statistics["average_points_scored"]
    statistics["average_points_received"]
    statistics["average_points_differential"] = statistics["average_points_scored"] - statistics["average_points_received"]
    statistics
  end

  def wins
    self.matches.where(:winner_id => self.id).count
  end

  def matches_played
    self.matches.count
  end

  def losses
    self.matches.count - self.matches.where(:winner_id => self.id).count
  end

  def win_ratio
    (self.wins * 100.0) / self.matches.count
  end

  def my_score(match)
    if match.player1_id == self.id
      match.score_player1
    else
      match.score_player2
    end
  end

  def opponent_score(match)
    if match.player1_id == self.id
      match.score_player2
    else
      match.score_player1
    end
  end

  def average_points_scored
    counter = 0.0
    self.matches.each do |match|
      counter += self.my_score(match)
    end 
    counter / self.matches_played
  end

  def average_points_received
    counter = 0.0
    self.matches.each do |match|
      counter += self.opponent_score(match)
    end 
    counter / self.matches_played
  end

  def average_points_differential
    self.average_points_scored - self.average_points_received
  end

end