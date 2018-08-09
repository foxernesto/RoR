json.extract! testimonio, :id, :nombre, :descripcion, :link, :activo, :created_at, :updated_at
json.url testimonio_url(testimonio, format: :json)
