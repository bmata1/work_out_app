Rails.application.routes.draw do
 root to: 'myfitness#index'
 get 'myfitness/new', to: 'myfitness#new'
 get 'myfitness/show/:id', to:'myfitness#show'
 get 'myfitness/create', to: 'myfitness#create'
 get 'myfitness/edit/:id', to: 'myfitness#edit'
 get 'myfitness/update/:id', to: 'myfitness#update'
 get 'myfitness/destroy/:id', to: 'myfitness#destroy'
end
   