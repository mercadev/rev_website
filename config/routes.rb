Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'accueil', to: 'static_pages#home', as: 'home'
  get 'agence', to: 'static_pages#agency', as: 'agency'
  get 'branding', to: 'static_pages#branding'
  get 'creations', to: 'static_pages#creations'
  get 'interviews', to: 'static_pages#interviews'
  get 'stories', to: 'static_pages#stories'
  get 'casting', to: 'static_pages#casting'
  get 'references', to: 'static_pages#references'

  get 'mentions-legales', to: 'static_pages#legal_notice', as: 'legal_notice'
  get 'politique-de-confidentialite', to: 'static_pages#privacy_policy', as: 'privacy_policy'

  get 'contact', to: 'contacts#new', as: 'new_contact'
  post 'contact', to: 'contacts#create', as: 'create_contact'
  get 'contacts/:id', to: 'contacts#show', as: 'contact'
end
