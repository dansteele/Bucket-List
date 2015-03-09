Rails.application.routes.draw do
  devise_for :travellers
  root 'welcome#index'

  resource :bucket_list, :only => [:show]
  resources :destinations, :only => [:create]
end
