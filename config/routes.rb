Rails.application.routes.draw do
  get 'expeditions/index'
  get 'expeditions/show'
  get 'expeditions/new'
  get 'expeditions/create'
  get 'expeditions/edit'
  get 'expeditions/update'
  get 'expeditions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'site_controller/hi', to: 'site_controller#hi'
  get 'site_controller/bye', redirect('https://ya.ru')
  get 'site_controller/about'


end
