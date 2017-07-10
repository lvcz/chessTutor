Rails.application.routes.draw do
  resources :moves
  resources :marks
get '/tutor', to: 'tutor#tutor' do
   erb :tutor, :locals => {:fen => params[:fen]}
end
  devise_for :users
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/grafo'

  resources :aulas
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
