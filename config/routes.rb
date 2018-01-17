Rails.application.routes.draw do

  devise_for :staffs, :controllers => {
  	:sessions => 'staffs/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :blogs, only:[:edit,:index,:new,:show]
 resources :news, only:[:edit,:index,:new,:show]

 root "sites#top"
 get '/about' => "sites#about", as: "about"
 get '/access' => "sites#access", as: "access"
 get '/price' => "sites#price", as: "price"
 get '/qanda' => "sites#qanda", as: "qanda"
 get '/staff_home' => "sites#staff_home", as: "staff_home"
end
