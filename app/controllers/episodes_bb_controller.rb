class EpisodesBbController < ApplicationController
  def show
    episode_id = params[:id]
    @episode =  HTTParty.get("https://tarea-1-breaking-bad.herokuapp.com/api/episodes/#{episode_id}")[0]
  end
end