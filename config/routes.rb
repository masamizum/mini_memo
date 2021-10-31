Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'memos#index'
  resources :memos 
    #onlyオプションの削除 ７つのアクションをまとめている。
    #, only: [:index, :new, :create, :destroy, :edit, :update, :show]

end
