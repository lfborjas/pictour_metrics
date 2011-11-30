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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111130035812) do

  create_table "metrics", :force => true do |t|
    t.string   "format"
    t.text     "parameters"
    t.string   "user_agent"
    t.string   "path"
    t.string   "method"
    t.string   "remote_ip"
    t.integer  "user_id"
    t.string   "session_id"
    t.string   "action"
    t.string   "controller"
    t.integer  "response_status"
    t.datetime "registered_at"
    t.float    "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "users", :force => true do |t|
    t.string    "username"
    t.string    "email"
    t.string    "password_hash"
    t.string    "password_salt"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "is_admin"
  end

end
