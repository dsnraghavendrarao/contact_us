Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :contact_forms, only: [:new, :create, :destroy]
    root :to => "contact_forms#new"
    get "/contact" => "contact_forms#new"
  end
  match '*a', :to => 'error_pages#routing', via: :get
end
