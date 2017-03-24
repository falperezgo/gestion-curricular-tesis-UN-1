Rails.application.routes.draw do
  get 'contact_us/index'

  get 'home/index'
  get 'contact_us/index'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
