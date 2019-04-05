Rails.application.routes.draw do
  root to: 'alchemy/pages#index'

  mount Spree::Core::Engine, at: '/'

  Spree::Core::Engine.routes.draw do
    root to: '/alchemy/pages#index'
  end

  mount Alchemy::Engine, at: '/'

end
