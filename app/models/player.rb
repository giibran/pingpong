class Player < ActiveRecord::Base
  def matches
  	Match.where("player1_id = ? OR player2_id = ?", id, id)
  end
end
