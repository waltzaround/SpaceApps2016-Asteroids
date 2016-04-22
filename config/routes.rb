Rails.application.routes.draw do
  mount Dashing::Engine, at: Dashing.config.engine_path
  root to: 'visitors#index'
  devise_for :users
end
