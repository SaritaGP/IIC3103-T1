class CharactersController < ApplicationController
  def show
    name_character = params[:id]
    @character_api = HTTParty.get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{name_character}")[0]
    @quotes_api = HTTParty.get("https://tarea-1-breaking-bad.herokuapp.com/api/quote?author=#{name_character}")
  end
end
