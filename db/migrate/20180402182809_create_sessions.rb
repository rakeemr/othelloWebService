class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions, force: :cascade do |t|
      t.string :host, limit: 50
      t.string :guest, limit: 50
      t.string :movetime, limit: 50
      t.string :state, limit: 4

      t.timestamp
    end
    add_foreign_key "sessions", "users", column: "guest", primary_key: "username", name: "sessions_guest_fkey"
    add_foreign_key "sessions", "users", column: "host", primary_key: "username", name: "sessions_host_fkey"
  end
end
