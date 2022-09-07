Rails.application.routes.draw do
  
  devise_for :companies
  resources :applicants
  resources :vacancies
  resources :companies
end
