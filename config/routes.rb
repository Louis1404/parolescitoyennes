Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: { sessions: 'users/sessions' }
  root to: 'videos#index'
  get 'quinoussommes', to: 'pages#quinoussommes', as: :quinoussommes
  get 'proposition', to: 'pages#proposition', as: :proposition
  resources :videos, except: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
