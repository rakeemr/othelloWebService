class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, primary_key: :username, id: :string, limit: 100, force: :cascade do |t|
      t.string :nickname, limit: 50
      t.string :email, limit: 50, :null => false
      t.string :pass, limit: 50, :null => false

      t.timestamp
    end
  end
end
