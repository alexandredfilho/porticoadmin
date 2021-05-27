json.extract! shipment, :id, :driver_id, :vehicle_id, :customer_id, :shipment_type, :invoice_number, :cargo_checker, :warehouse, :dock, :date, :hour, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
