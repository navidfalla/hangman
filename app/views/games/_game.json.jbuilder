json.extract! game, :id, :word, :max_mistakes, :created_at, :updated_at
json.url game_url(game, format: :json)
