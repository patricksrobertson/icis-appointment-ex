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

ActiveRecord::Schema.define(:version => 20130411111510) do

  create_table "appointments", :force => true do |t|
    t.string   "uid"
    t.string   "reason"
    t.string   "user_ids",    :default => "'--- []\n'"
    t.string   "patient_ids", :default => "'--- []\n'"
    t.datetime "at"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "encounters", :force => true do |t|
    t.string   "uid"
    t.integer  "appointment_id"
    t.string   "room_id"
    t.string   "patient_ids",    :default => "'--- []\n'"
    t.string   "user_ids"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
