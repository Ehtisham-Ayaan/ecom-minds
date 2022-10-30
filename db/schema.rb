# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_30_152841) do

  create_table "savermarts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "display"
    t.string "ram"
    t.string "battery"
    t.string "back_camera"
    t.string "release_date"
    t.string "sim_support"
    t.string "phone_dimensions"
    t.string "phone_weight"
    t.string "operating_system"
    t.string "processor"
    t.string "gpu"
    t.string "screen_size"
    t.string "screen_resolution"
    t.string "screen_type"
    t.string "screen_protection"
    t.string "front_camera"
    t.string "front_flashlight"
    t.string "front_video_recording"
    t.string "back_flashlight"
    t.string "back_video_recording"
    t.string "internal_memory"
    t.boolean "card_slot"
    t.string "battery_type"
    t.boolean "bluetooth"
    t.boolean "G3"
    t.boolean "G4"
    t.boolean "G5"
    t.boolean "radio"
    t.boolean "wifi"
    t.boolean "nfc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "faq"
    t.text "box"
    t.text "cond"
  end

end
