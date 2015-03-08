Rails.application.routes.draw do
 
  get 'pages/launch'

  root 'pages#launch'

  devise_for :users, :controllers => { :registrations => 'users/registrations', :sessions => 'users/sessions'}


end
