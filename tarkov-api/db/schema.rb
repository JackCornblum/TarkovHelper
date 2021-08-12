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

ActiveRecord::Schema.define(version: 2021_08_12_184853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrel_gasblocks", force: :cascade do |t|
    t.integer "barrel_id"
    t.integer "gasblock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "barrels", force: :cascade do |t|
    t.string "name"
    t.integer "ergonomics"
    t.integer "recoil"
    t.integer "dealer_id"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "buffer_tubes", force: :cascade do |t|
    t.string "name"
    t.integer "ergonomics"
    t.integer "recoil"
    t.integer "dealer_id"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "charging_handles", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "ergonomics"
    t.integer "dealer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foregrips", force: :cascade do |t|
    t.string "name"
    t.integer "ergonomics"
    t.integer "recoil"
    t.integer "price"
    t.integer "dealer_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gasblocks", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "dealer_id"
    t.integer "recoil"
    t.integer "ergonomics"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "handguards", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "recoil"
    t.integer "ergonomics"
    t.integer "dealer_id"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "muzzle_adapter_barrels", force: :cascade do |t|
    t.integer "muzzle_adapter_id"
    t.integer "barrel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "muzzle_adapter_muzzles", force: :cascade do |t|
    t.integer "muzzle_id"
    t.integer "muzzle_adapter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "muzzle_adapters", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "dealer_id"
    t.integer "price"
    t.integer "recoil"
    t.integer "ergonomics"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "muzzle_barrels", force: :cascade do |t|
    t.integer "muzzle_id"
    t.integer "barrel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "muzzles", force: :cascade do |t|
    t.string "name"
    t.integer "recoil"
    t.integer "ergonomics"
    t.integer "dealer_id"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pistol_grips", force: :cascade do |t|
    t.string "name"
    t.integer "dealer_id"
    t.integer "ergonomics"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receivers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "recoil"
    t.integer "ergonomics"
    t.integer "dealer_id"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stock_buffer_tubes", force: :cascade do |t|
    t.integer "buffer_tube_id"
    t.integer "stock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "dealer_id"
    t.integer "recoil"
    t.integer "ergonomics"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_barrels", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "barrel_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_buffer_tubes", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "buffer_tube_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_charging_handles", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "charging_handle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_foregrips", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "foregrip_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_muzzle_adapters", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "muzzle_adapter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_muzzles", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "muzzle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_pistol_grips", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "pistol_grip_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_receivers", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "receiver_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapon_stocks", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "stock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "caliber"
    t.string "image"
    t.string "weapon_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
