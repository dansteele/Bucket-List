Rails.application.routes.draw do
  devise_for :travellers
  root 'welcome#index'
end
