Rails.application.routes.draw do

  root  'static_pages#home'
  get   '/resume', to: 'static_pages#resume', as: 'resume'

  resources :projects
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
