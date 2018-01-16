Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :blogs
 resources :news

 root "sites#top"
 get '/about' => "sites#about", as: "about"
 get '/access' => "sites#access", as: "access"
 get '/price' => "sites#price", as: "price"
 get '/qanda' => "sites#qanda", as: "qanda"
end
