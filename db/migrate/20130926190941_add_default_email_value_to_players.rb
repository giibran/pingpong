class AddDefaultEmailValueToPlayers < ActiveRecord::Migration
  def change
  	change_column :players, :email, :string, :default => ""
  end
end
