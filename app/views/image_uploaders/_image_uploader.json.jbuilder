json.extract! image_uploader, :id, :name, :email, :avtar, :created_at, :updated_at
json.url image_uploader_url(image_uploader, format: :json)
