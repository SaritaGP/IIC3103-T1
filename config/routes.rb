Rails.application.routes.draw do
  get 'characters/:id', as: 'character', to: 'characters#show'
  get 'characters', as: 'characters', to: 'characters#index' 
  get 'episodes_bcs/:id', as: 'episode_bcs', to: 'episodes_bcs#show'
  get 'episodes_bb/:id', as: 'episode_bb', to: 'episodes_bb#show'
  get 'seasons_bcs/:id', as: "season_bcs", to: 'seasons_bcs#show'
  get 'seasons_bb/:id', as: "season_bb",to: 'seasons_bb#show'
  root 'home#index'
  get 'error', as: 'errors', to: 'error#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
