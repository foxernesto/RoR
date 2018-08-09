json.extract! ubicacion, :id, :sitio, :latitud, :longitud, :activo, :created_at, :updated_at
json.url ubicacion_url(ubicacion, format: :json)
