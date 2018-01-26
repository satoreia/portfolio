Rails.application.routes.draw do

  devise_for :staffs, :controllers => {
  	:sessions => 'staffs/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get '/abouts' => "abouts#create", as: "abouts"

 resources :blogs
 resources :news
 resources :abouts, only: [:new, :create, :edit, :update, :destroy]
 resources :questions, only: [:new, :create, :edit, :update, :destroy]

 root "sites#top"
 get '/about' => "sites#about", as: "aboutus"
 get '/access' => "sites#access", as: "access"
 get '/price' => "sites#price", as: "price"
 get '/qanda' => "sites#qanda", as: "qanda"
 get '/staff_home' => "sites#staff_home", as: "staff_home"
end
