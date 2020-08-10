json.extract! poi, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url poi_url(poi, format: :json)
