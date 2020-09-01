Rails.application.routes.draw do

  get 'addresses/index'
  root 'static_pages#home'

  get '/question-1', to: 'static_pages#question_1'
  get '/question-2', to: 'static_pages#question_2'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/screening', to: 'questions#index'
  get '/address-categories', to: 'address_categories#index'
  post '/address-categories', to: 'address_categories#index'
  get '/address-categories/:category_id', to: 'address_categories#show', as: 'address_category'
  get '/medium-risk', to: 'address_categories#medium_risk'
  get '/high-risk', to: 'address_categories#high_risk'

end
