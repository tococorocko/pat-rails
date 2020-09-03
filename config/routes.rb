Rails.application.routes.draw do

  get '/:locale' => 'static_pages#home'
  root 'static_pages#home'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get 'addresses/index'
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

end
