class ChangeIdplayerNameToPlayerid < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.rename :id_player1, :player1_id
      t.rename :id_player2, :player2_id
    end
  end
end
