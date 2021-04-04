class SeasonsBcsController < ApplicationController
  def show
    @season = params[:id]
    episodes_api =  HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Better+Call+Saul')

    @episodes = episodes_api.group_by {|var_bcs| var_bcs["season"]}[@season]
  end
end
