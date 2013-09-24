class Match < ActiveRecord::Base
	belongs_to :player1, :class_name => 'Player', :foreign_key => 'player1_id'
  belongs_to :player2, :class_name => 'Player', :foreign_key => 'player2_id'
  validates :player1_id, presence: true
  validates :score_player1, presence: true
  validates :player2_id, presence: true
  validates :score_player2, presence: true
  validates :score_player1, numericality: { only_integer: true }
  validates :score_player2, numericality: { only_integer: true }
end
