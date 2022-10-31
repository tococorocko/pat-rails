Rails.application.routes.draw do
  # get '/:locale' => 'static_pages#home'
  root 'static_pages#home'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get '/' => 'static_pages#home'
    get '/question-1', to: 'static_pages#question_1'
    get '/question-2', to: 'static_pages#question_2'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    get '/admin', to: 'static_pages#admin'
    get '/screening', to: 'questions#index'
    get '/primary-prevention', to: 'address_categories#index', as: 'address_categories'
    post '/primary-prevention', to: 'address_categories#index'
    get '/primary-prevention/:category_id', to: 'address_categories#show', as: 'address_category'
    get '/secondary-prevention', to: 'address_categories#medium_risk', as: 'medium_risk'
    get '/tertiary-prevention', to: 'address_categories#high_risk', as: 'high_risk'
  end
end
