Rails.application.routes.draw do
  resources :sessions, only: [:create]
  namespace 'api' do
    namespace 'v1' do
      resources :articles
    end
  end
end

