class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :pokemon, null:false, foreign_key:true
      t.references :move, null:false, foreign_key:true
      t.timestamps
    end

    add_index :poke_moves, [:pokemon_id, :move_id], unique:true
  end
end
