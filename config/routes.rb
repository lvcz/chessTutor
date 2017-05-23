Rails.application.routes.draw do
  resources :highlights
get '/tutor', to: 'tutor#tutor' do
   erb :tutor, :locals => {:fen => params[:fen]}
end
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/help'

  resources :aulas
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
