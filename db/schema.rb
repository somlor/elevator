# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130805065435) do

  create_table "cab_calls", :force => true do |t|
    t.integer  "requested_floor", :null => false
    t.string   "direction",       :null => false
    t.integer  "cab_id"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "cabs", :force => true do |t|
    t.float    "current_floor",                     :null => false
    t.float    "current_direction",  :limit => 255
    t.string   "status",                            :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.float    "reserved_direction", :limit => 255
  end

end
