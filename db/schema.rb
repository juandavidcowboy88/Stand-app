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

ActiveRecord::Schema.define(version: 20180411141928) do

  create_table "artists", force: :cascade do |t|
    t.string   "name_artist"
    t.string   "lastname_artist"
    t.string   "email_artist"
    t.string   "city_artist"
    t.string   "country_artist"
    t.string   "cellphone_artist"
    t.string   "rol_artist"
    t.date     "birthdate_artist"
    t.string   "linkgeneralphoto_artist"
    t.string   "nickname_artist"
    t.string   "linkvideosphotos"
    t.text     "biopic_artist"
    t.string   "facebookuser_artist"
    t.string   "facebookfanpage_artist"
    t.string   "instagramuser_artist"
    t.string   "skills_artist"
    t.string   "work_artist"
    t.string   "address_artist"
    t.integer  "rutinasnumber_artist"
    t.integer  "stagetime_artist"
    t.date     "artistictime_artist"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "artists_events", id: false, force: :cascade do |t|
    t.integer "artist_id"
    t.integer "event_id"
    t.index ["artist_id"], name: "index_artists_events_on_artist_id"
    t.index ["event_id"], name: "index_artists_events_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name_evet"
    t.string   "artistcreator"
    t.string   "participants_event"
    t.string   "regularartists_event"
    t.string   "guesstartists_event"
    t.datetime "date_event"
    t.time     "duration_event"
    t.bigint   "payment_event"
    t.datetime "dateopeninscription_event"
    t.datetime "datecloseinscription_event"
    t.string   "linktographicpiece_event"
    t.string   "linkfaceboo_event"
    t.string   "linkinstagram_event"
    t.string   "generalconditions_event"
    t.boolean  "generalcondition1_event"
    t.boolean  "generalcondition2_event"
    t.string   "generalcondition3_event_boolean"
    t.boolean  "repeat_event"
    t.string   "place_event"
    t.string   "contact_place"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
