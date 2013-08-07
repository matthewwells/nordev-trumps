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

ActiveRecord::Schema.define(:version => 20130807142338) do

  create_table "cards", :force => true do |t|
    t.string   "name"
    t.string   "val1"
    t.string   "val2"
    t.string   "val3"
    t.string   "val4"
    t.string   "val5"
    t.string   "val6"
    t.string   "val7"
    t.string   "val8"
    t.string   "val9"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "deck_id"
  end

  create_table "decks", :force => true do |t|
    t.string   "name"
    t.integer  "num_attr"
    t.string   "attr1"
    t.string   "attr2"
    t.string   "attr3"
    t.string   "attr4"
    t.string   "attr5"
    t.string   "attr6"
    t.string   "attr7"
    t.string   "attr8"
    t.string   "attr9"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
