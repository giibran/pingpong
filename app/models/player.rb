class Player < ActiveRecord::Base

	validates_uniqueness_of :name
	validates :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates :name, presence: true

  def matches
  	Match.where("player1_id = ? OR player2_id = ?", id, id)
  end
end
