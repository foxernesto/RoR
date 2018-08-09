json.extract! informacion, :id, :nombre_tecnico, :descripcion, :nombre_altenativo, :via_consumo, :efectos, :link, :activo, :created_at, :updated_at
json.url informacion_url(informacion, format: :json)
