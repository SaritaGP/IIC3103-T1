class CharactersController < ApplicationController
  def show
    name_character = params[:id]
    @character_api = http_get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{name_character}")[0]
    @quotes_api = http_get("https://tarea-1-breaking-bad.herokuapp.com/api/quote?author=#{name_character}")
  end

  def index  
    search_name = params[:search]
    @result_search = []
    offset = 0

    while @result_search.length % 10 == 0 || @result_search.empty?
      result = http_get("https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=#{search_name}&limit=10&offset=#{offset}")
      @result_search.append(*result)
      offset += 10
      if result.empty?
        break
      end
    end
    
  end
end
