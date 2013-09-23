class Match < ActiveRecord::Base
	has_one :player1, :class_name => 'Player'
  has_one :player2, :class_name => 'Player'
  validates :player1_id, presence: true
  validates :score_player1, presence: true
  validates :player2_id, presence: true
  validates :score_player2, presence: true
  validates :score_player1, numericality: { only_integer: true }
  validates :score_player2, numericality: { only_integer: true }
end
