Rails.application.routes.draw do
  get 'chapters_bb/show'
  get 'seasons_bcs/:id', as: "season_bcs", to: 'seasons_bcs#show'
  get 'seasons_bb/:id', as: "season_bb",to: 'seasons_bb#show'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
