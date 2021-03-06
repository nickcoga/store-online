# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[index show create update destroy]
  resources :products, only: %i[index show create update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
