ActiveRecord::Schema.define(version: 2021_05_27_002912) do

  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "document"
    t.string "shipping_company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.bigint "driver_id", null: false
    t.bigint "vehicle_id", null: false
    t.bigint "customer_id", null: false
    t.integer "shipment_type"
    t.string "invoice_number"
    t.string "cargo_checker"
    t.integer "warehouse"
    t.string "dock"
    t.date "date"
    t.time "hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_shipments_on_customer_id"
    t.index ["driver_id"], name: "index_shipments_on_driver_id"
    t.index ["vehicle_id"], name: "index_shipments_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "manufacturer"
    t.string "model"
    t.string "license_plate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_type"
  end

  add_foreign_key "shipments", "customers"
  add_foreign_key "shipments", "drivers"
  add_foreign_key "shipments", "vehicles"
end
