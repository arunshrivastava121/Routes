Rails.application.routes.draw do

  resources :images do
    collection do 
      get 'search_image'
    end
  end
  resources :photos do
    get 'preview', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
