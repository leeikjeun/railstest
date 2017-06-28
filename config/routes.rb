Rails.application.routes.draw do
  resources :admin, only: [:index, :new, :create, :destroy, :addMenu, :menuCreate, :showmenu]
  resources :main, only: [:index, :p_search, :r_search, :r_detail]
  root 'main#index'
  get 'p_search' => 'main#p_search'
  get 'r_search' => 'main#r_search'
  get 'r_detail' => 'main#r_detail'
  post 'recive_p_data' => 'main#recive_p_data'
  post 'recive_r_data' => 'main#recive_r_data'

  get 'admin' => 'admin#list'
  get 'admin/new' => 'admin#new'
  post 'admin/create' => 'admin#create'
  get 'admin/index' => 'admin#index'
  get 'admin/addmenu' => 'admin#addMenu'
  post 'admin/menucreate' => "admin#menuCreate"
  get 'admin/showmenu' => 'admin#showmenu'
  get 'admin/newProduct' => 'admin#newProduct'
  post 'admin/createProduct' => 'admin#createProduct'
  get 'admin/productlist' => 'admin#productlist'

end
