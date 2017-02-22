Rails.application.routes.draw do
  get 'landings/index'

  resources :influencers

  resources :platform_campaigns

  resources :brands

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'admin/dashboard#index'

end
