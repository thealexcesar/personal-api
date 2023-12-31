# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api, defaults: { format: :json } do # TODO: , constraints: { subdomain: 'api' }, path: '/' do
    # scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    # todo: resources :users, only: %i[show create update destroy]
    # end
    namespace :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, only: [:index, :show]
    end
  end

end
