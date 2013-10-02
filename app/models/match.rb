class Match < ActiveRecord::Base
  has_and_belongs_to_many :players
	# belongs_to :player1, :class_name => 'Player', :foreign_key => 'player1_id'
 #  belongs_to :player2, :class_name => 'Player', :foreign_key => 'player2_id'
 #  validates :player1_id, presence: true
 #  validates :score_player1, presence: true
 #  validates :player2_id, presence: true
 #  validates :score_player2, presence: true
 #  validates :score_player1, numericality: { only_integer: true }
 #  validates :score_player2, numericality: { only_integer: true }
  
  # before_create :calculate_winner
  # before_save :calculate_winner

  private

  	def calculate_winner
  		if(self.score_player1 > self.score_player2)
				self.winner_id = self.player1_id
			else
				self.winner_id = self.player2_id
			end
  	end
end
