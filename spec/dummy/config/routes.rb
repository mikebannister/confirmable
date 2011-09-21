Rails.application.routes.draw do
  resources :widgets

  mount Confirmable::Engine => "/confirmable"
end
