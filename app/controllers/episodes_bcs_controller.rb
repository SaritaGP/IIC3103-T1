class EpisodesBcsController < ApplicationController
  def show
    episode_id = params[:id]
    @episode =  http_get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes/#{episode_id}")[0]
  end
end
