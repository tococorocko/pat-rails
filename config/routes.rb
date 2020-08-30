Rails.application.routes.draw do

  get 'addresses/index'
  root 'static_pages#home'

  get '/question-1', to: 'static_pages#question_1'
  get '/question-2', to: 'static_pages#question_2'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/screening', to: 'questions#index'
  get '/addresses', to: 'addresses#index'
  get '/addresses/:category_id', to: 'addresses#show', as: 'address'


end
