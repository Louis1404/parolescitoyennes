Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: { sessions: 'users/sessions' }
  root to: 'videos#index'
  get 'quinoussommes', to: 'pages#quinoussommes', as: :quinoussommes
  get 'proposition', to: 'messages#new', as: :new_proposition
  post 'proposition', to: 'messages#create', as: :create_proposition
  resources :videos, except: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
