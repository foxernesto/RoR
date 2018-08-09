json.extract! video_intitucional, :id, :nombre, :descripcion, :link, :activo, :created_at, :updated_at
json.url video_intitucional_url(video_intitucional, format: :json)
