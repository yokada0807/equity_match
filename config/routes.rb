Rails.application.routes.draw do
  devise_for :users
  ## Welcome page
  # get 'top/index'
  
  # root（トップページ「/」）に訪れた際にtopコントローラーのindexアクションを実行
  root 'top#index'

  resources :users, only: %i(index show)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
