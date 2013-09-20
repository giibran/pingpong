class Match < ActiveRecord::Base
	has_one :player1, :class_name => 'Player', :foreign_key => 'id_player1'
  has_one :player2, :class_name => 'Player', :foreign_key => 'id_player2'
  validates :id_player1, presence: true
  validates :score_player1, presence: true
  validates :id_player2, presence: true
  validates :score_player2, presence: true
  validates :score_player1, numericality: { only_integer: true }
  validates :score_player2, numericality: { only_integer: true }
end
