Rails.application.routes.draw do
  # get "/:locale" => "static_pages#home"
  root "static_pages#home"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    get "/" => "static_pages#home"
    get "/question-1", to: "static_pages#question1"
    get "/question-2", to: "static_pages#question2"
    get "/about", to: "static_pages#about"
    get "/contact", to: "static_pages#contact"
    get "/admin", to: "static_pages#admin"
    get "/screening", to: "questions#index"
    get "/preventions", to: "preventions#index", as: "preventions"
    post "/preventions", to: "preventions#evaluation", as: "evaluations"
    get "/primary-prevention", to: "preventions#low_risk", as: "low_risk"
    get "/secondary-prevention", to: "preventions#medium_risk", as: "medium_risk"
    get "/tertiary-prevention", to: "preventions#high_risk", as: "high_risk"
  end
end
