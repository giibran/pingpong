json.array!(@matches) do |match|
  json.extract! match, :id_player1, :id_player2, :score_player1, :score_player2, :date
  json.url match_url(match, format: :json)
end
