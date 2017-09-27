Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  #Route for scaffolding Users
  resources :users
  root 'users#index'
  get 'multiple_recipients/send_to_all', to: 'multiple_recipients#send_to_all', as: :send_to_all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
