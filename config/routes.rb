# == Route Map
#
#                   Prefix Verb   URI Pattern                      Controller#Action
#              experiences GET    /experiences(.:format)           experiences#index
#                          POST   /experiences(.:format)           experiences#create
#           new_experience GET    /experiences/new(.:format)       experiences#new
#          edit_experience GET    /experiences/:id/edit(.:format)  experiences#edit
#               experience GET    /experiences/:id(.:format)       experiences#show
#                          PATCH  /experiences/:id(.:format)       experiences#update
#                          PUT    /experiences/:id(.:format)       experiences#update
#                          DELETE /experiences/:id(.:format)       experiences#destroy
#                 myskills GET    /myskills(.:format)              myskills#index
#                          POST   /myskills(.:format)              myskills#create
#              new_myskill GET    /myskills/new(.:format)          myskills#new
#             edit_myskill GET    /myskills/:id/edit(.:format)     myskills#edit
#                  myskill GET    /myskills/:id(.:format)          myskills#show
#                          PATCH  /myskills/:id(.:format)          myskills#update
#                          PUT    /myskills/:id(.:format)          myskills#update
#                          DELETE /myskills/:id(.:format)          myskills#destroy
#                          GET    /curriculums/:id/tools(.:format) curriculums#tools
#                          POST   /curriculums/:id/tools(.:format) curriculums#newtools
#              curriculums GET    /curriculums(.:format)           curriculums#index
#                          POST   /curriculums(.:format)           curriculums#create
#           new_curriculum GET    /curriculums/new(.:format)       curriculums#new
#          edit_curriculum GET    /curriculums/:id/edit(.:format)  curriculums#edit
#               curriculum GET    /curriculums/:id(.:format)       curriculums#show
#                          PATCH  /curriculums/:id(.:format)       curriculums#update
#                          PUT    /curriculums/:id(.:format)       curriculums#update
#                          DELETE /curriculums/:id(.:format)       curriculums#destroy
#                    tools GET    /tools(.:format)                 tools#index
#                          POST   /tools(.:format)                 tools#create
#                 new_tool GET    /tools/new(.:format)             tools#new
#                edit_tool GET    /tools/:id/edit(.:format)        tools#edit
#                     tool GET    /tools/:id(.:format)             tools#show
#                          PATCH  /tools/:id(.:format)             tools#update
#                          PUT    /tools/:id(.:format)             tools#update
#                          DELETE /tools/:id(.:format)             tools#destroy
#         new_user_session GET    /users/sign_in(.:format)         devise/sessions#new
#             user_session POST   /users/sign_in(.:format)         devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)        devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)    devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
#            user_password PATCH  /users/password(.:format)        devise/passwords#update
#                          PUT    /users/password(.:format)        devise/passwords#update
#                          POST   /users/password(.:format)        devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)          devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)         devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)            devise/registrations#edit
#        user_registration PATCH  /users(.:format)                 devise/registrations#update
#                          PUT    /users(.:format)                 devise/registrations#update
#                          DELETE /users(.:format)                 devise/registrations#destroy
#                          POST   /users(.:format)                 devise/registrations#create
#               home_index GET    /home/index(.:format)            home#index
#            home_articles GET    /home/articles(.:format)         home#articles
#          home_categories GET    /home/categories(.:format)       home#categories
#                          GET    /home/index(.:format)            home#index
#                     root GET    /                                home#index

Rails.application.routes.draw do
  resources :experiences
  resources :myskills
  resources :curriculums do
    collection do
      get ':id/tools', to: 'curriculums#tools'
      post ':id/tools', to: 'curriculums#newtools'
    end
  end
  resources :tools
  devise_for :users
  get 'home/index'

  get 'home/articles'

  get 'home/categories'

  get 'home/index'
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
