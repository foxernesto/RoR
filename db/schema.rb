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

ActiveRecord::Schema.define(version: 2018_07_22_040647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ayuda_localidads", force: :cascade do |t|
    t.string "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informacions", force: :cascade do |t|
    t.string "nombre_tecnico", limit: 20
    t.text "descripcion"
    t.text "nombre_altenativo"
    t.text "via_consumo"
    t.text "efectos"
    t.string "link"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre_tecnico"], name: "index_informacions_on_nombre_tecnico", unique: true
  end

  create_table "testimonios", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.string "descripcion"
    t.string "link"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_testimonios_on_nombre", unique: true
  end

  create_table "ubicacions", force: :cascade do |t|
    t.string "sitio", limit: 20
    t.float "latitud"
    t.float "longitud"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitio"], name: "index_ubicacions_on_sitio", unique: true
  end

  create_table "video_intitucionals", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.string "descripcion"
    t.string "link"
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nombre"], name: "index_video_intitucionals_on_nombre", unique: true
  end

end
