Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
    devise_for :users,
               path: '',
               path_names: {
                   sign_in: 'login',
                   sign_out: 'logout',
                   registration: 'signup'
               },
               controllers: {
                   sessions: 'sessions',
                   registrations: 'registrations'
               }
    resources :meetups
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
