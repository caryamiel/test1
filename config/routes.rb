Rails.application.routes.draw do
  
  resources :jobcomments
  resources :jobposts
  resources :profiles
  resources :talkresps
  resources :projtalks
  
  post'/sendAttachments' => 'projects#sendAttachment'
  get '/getFriends' => 'users#getfriends'
  post '/send_sms' => 'twilio#send_sms'
  resources :deadlines
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :taskmemberships
  resources :projectmemberships
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users
  resources :friendships
  resources :projects
  resources :tasks
  resources :subtasks
  resources :comments    
  get 'page/index'
  root 'rails_admin/main#dashboard'


  resources :users do
    resources :friendships
    resources :projects do
      resources :tasks do
        resources :subtasks do
          resources :comments
        end
      end
    end
  end


end
