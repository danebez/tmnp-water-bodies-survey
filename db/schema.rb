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

ActiveRecord::Schema.define(:version => 20130824072622) do

  create_table "feedbacks", :force => true do |t|
    t.integer  "respondent_id"
    t.string   "ecosystem_service_category", :limit => 60, :null => false
    t.string   "water_body_rank_1",          :limit => 40, :null => false
    t.string   "water_body_rank_2",          :limit => 40, :null => false
    t.string   "water_body_rank_3",          :limit => 40, :null => false
    t.string   "water_body_rank_4",          :limit => 40, :null => false
    t.string   "water_body_rank_5",          :limit => 40, :null => false
    t.string   "water_body_rank_6",          :limit => 40
    t.string   "water_body_rank_7",          :limit => 40
    t.string   "water_body_rank_8",          :limit => 40
    t.string   "water_body_rank_9",          :limit => 40
    t.string   "water_body_rank_10",         :limit => 40
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "respondents", :force => true do |t|
    t.string   "fullname",   :limit => 30, :null => false
    t.string   "email",      :limit => 60, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
