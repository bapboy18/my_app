Rails.application.routes.draw do
  get 'row_contents/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :custom_tags
  resources :raw_files
  resources :row_contents do
    collection {post :import}
  end
  resources :mirrors
end
