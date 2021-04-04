require 'httparty' 

class HomeController < ApplicationController
  def index
    episodes_bb =  HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Breaking+Bad')
    episodes_bcs =  HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Better+Call+Saul')

    @seasons_bb = episodes_bb.map {|var_bb| var_bb["season"]}.uniq
    @seasons_bcs = episodes_bcs.map {|var_bcs| var_bcs["season"]}.uniq  
  end
end
