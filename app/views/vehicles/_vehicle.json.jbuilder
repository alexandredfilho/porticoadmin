json.extract! vehicle, :id, :manufacturer, :model, :license_plate, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
