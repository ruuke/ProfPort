Rails.application.routes.draw do

  
  devise_for :users
  resources :expeditions do
  	resources :spaceships, shallow: true
  end 

  resources :galaxies	
  
  resources :planets do
    get 'logo', on: :collection
    get 'about', on: :collection
  end

  get 'site/hello', to: 'site#hello'


  get '/rusrails', to: redirect('http://rusrails.ru')

  get 'site/poem', to: 'site#poem'

  root 'planets#index'

  scope module: "api" do
    namespace "v1" do
      resources :expeditions, only: %i[show index create]
    end
    namespace "v1" do
      resources :spaceships, only: %i[index show]
    end
    namespace "v2" do
      resources :expeditions, only: %i[index show create update destroy]
    end
    namespace "v2" do
      resources :spaceships, only: %i[index show]
    end
  end

end
