Rails.application.routes.draw do
  devise_for :users
  resources :llinks do
    member do
      put "like", to: "llinks#upvote"
      put "dislike", to: "llinks#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root('llinks#index')

end
