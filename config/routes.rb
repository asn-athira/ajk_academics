
Rails.application.routes.draw do
 root 'courses#index'
 resources :courses 
 post 'courses/:id/edit' , to:'courses#edit'
 resources :students
 post 'students/:id/edit' , to:'students#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
