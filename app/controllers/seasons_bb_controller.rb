class SeasonsBbController < ApplicationController
  def show
    @season = params[:id]
    episodes_api =  http_get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Breaking+Bad')

    @episodes = episodes_api.group_by {|var_bb| var_bb["season"]}[@season]
  end
end
