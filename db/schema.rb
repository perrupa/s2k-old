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

ActiveRecord::Schema.define(:version => 20110321184234) do

  create_table "bboys", :force => true do |t|
    t.string   "name"
    t.string   "bboyName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bboys_crews", :id => false, :force => true do |t|
    t.integer "bboy_id"
    t.integer "crew_id"
  end

  create_table "bboys_videos", :id => false, :force => true do |t|
    t.integer "bboy_id"
    t.integer "video_id"
  end

  create_table "crews", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "youtubeID"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
