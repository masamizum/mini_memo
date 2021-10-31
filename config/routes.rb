Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'memos#index'
  resources :memos 
    #onlyオプションの削除 ７つのアクションをまとめている。
    #, only: [:index, :new, :create, :destroy, :edit, :update, :show]
    resources :memos do
      resources :comments, only: :create
    end
    #/users/:idのパスでリクエストした際にusers_controller.rbのshowアクションを実行するルーティングが設定できました。
    resources  :users, only: :show 


end
