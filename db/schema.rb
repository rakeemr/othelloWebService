# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180402182832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", id: false, force: :cascade do |t|
    t.string "username", limit: 50, null: false
    t.string "p1moves", limit: 50
    t.string "p2moves", limit: 50
    t.string "color1tab", limit: 50
    t.string "color2tab", limit: 50
    t.boolean "ended"
    t.integer "gameboardsizex", null: false
    t.integer "gameboardsizey", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "host", limit: 50
    t.string "guest", limit: 50
    t.string "movetime", limit: 50
    t.string "state", limit: 4
  end

  create_table "users", primary_key: "username", id: :string, limit: 100, force: :cascade do |t|
    t.string "nickname", limit: 50
    t.string "email", limit: 50, null: false
    t.string "pass", limit: 50, null: false
  end

  add_foreign_key "games", "users", column: "username", primary_key: "username", name: "games_username_fkey"
  add_foreign_key "sessions", "users", column: "guest", primary_key: "username", name: "sessions_guest_fkey"
  add_foreign_key "sessions", "users", column: "host", primary_key: "username", name: "sessions_host_fkey"
end
