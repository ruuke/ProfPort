Rails.application.routes.draw do

  resources :expeditions

  
  resources :planets do
    get 'logo', on: :collection
    get 'about', on: :collection
  end

  get 'site/hello', to: 'site#hello'


  get '/rusrails', to: redirect('http://rusrails.ru')

  get 'site/poem', to: 'site#poem'

  root 'planets#logo'

end
