json.extract! vehicle, :id, :vehicle_type, :manufacturer, :model, :license_plate, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
