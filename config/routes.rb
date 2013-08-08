Nutra::Application.routes.draw do

  # mount Piggybak::Engine => '/checkout', :as => 'piggybak'
  devise_for :users 
  
  resources :neuotransmitter_reports
  resources :medications
  resources :assessments
  resources :patients
  resources :supplements
  resources :orders
  resources :supplements


  get "social/parents"
  get "social/newsletter"
  get "social/story"
  get "social/friends"
  get "social/suggestions"

  get "evaluation/show"
  get "evaluation/list"

  get "science/show"

  get "company/about"
  get "company/contact"
  get "company/contact_create"
  
  get "consultation/new"
  get "consultation/create"
  get "consultation/show"

  get "child/new"
  get "child/create"
  get "child/show"
  get "child/list"

  get "profile/new"
  get "profile/create"
  get "profile/show"
  get "profile/edit"

  get "program/show"
  get 'orders/misc_order'
  get 'orders/presc_order'

  match 'orders/misc_order', :to => 'orders#misc_order'
  match 'orders/presc_order', :to => 'orders#presc_order'
  match 'orders/program', :to => 'orders#program'
  match 'evaluation/show', :to => 'evaluation#show'


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end