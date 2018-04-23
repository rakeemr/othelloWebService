class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games, id: false, force: :cascade do |t|
      t.string :username, limit: 50, :null => false
      t.string :p1moves, limit: 50
      t.string :p2moves, limit: 50
      t.string :color1tab, limit: 50
      t.string :color2tab, limit: 50
      t.boolean :ended
      t.integer :gameboardsizex, :null => false
      t.integer :gameboardsizey, :null => false

      t.timestamp
    end
    add_foreign_key "games", "users", column: "username", primary_key: "username", name: "games_username_fkey"
  end
end
