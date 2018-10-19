Rails.application.routes.draw do
  resources :emails, only: [] do
    collection do
      get :validate
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end