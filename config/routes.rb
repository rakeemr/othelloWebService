Rails.application.routes.draw do
  namespace 'othello' do
    resources :users
    resources :games
    resources :sessions
  end
end
