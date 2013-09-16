class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :id_player1
      t.integer :id_player2
      t.integer :score_player1
      t.integer :score_player2
      t.date :date

      t.timestamps
    end
  end
end
