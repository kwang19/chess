Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "chessplayers#index"
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Prospector resource:
  # CREATE
  get "/prospectors/new", :controller => "prospectors", :action => "new"
  post "/create_prospector", :controller => "prospectors", :action => "create"

  # READ
  get "/prospectors", :controller => "prospectors", :action => "index"
  get "/prospectors/:id", :controller => "prospectors", :action => "show"

  # UPDATE
  get "/prospectors/:id/edit", :controller => "prospectors", :action => "edit"
  post "/update_prospector/:id", :controller => "prospectors", :action => "update"

  # DELETE
  get "/delete_prospector/:id", :controller => "prospectors", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Profiledetail resource:
  # CREATE
  get "/profiledetails/new", :controller => "profiledetails", :action => "new"
  post "/create_profiledetail", :controller => "profiledetails", :action => "create"

  # READ
  get "/profiledetails", :controller => "profiledetails", :action => "index"
  get "/profiledetails/:id", :controller => "profiledetails", :action => "show"

  # UPDATE
  get "/profiledetails/:id/edit", :controller => "profiledetails", :action => "edit"
  post "/update_profiledetail/:id", :controller => "profiledetails", :action => "update"

  # DELETE
  get "/delete_profiledetail/:id", :controller => "profiledetails", :action => "destroy"
  #------------------------------

  # Routes for the Profile resource:
  # CREATE
  get "/profiles/new", :controller => "profiles", :action => "new"
  post "/create_profile", :controller => "profiles", :action => "create"

  # READ
  get "/profiles", :controller => "profiles", :action => "index"
  get "/profiles/:id", :controller => "profiles", :action => "show"

  # UPDATE
  get "/profiles/:id/edit", :controller => "profiles", :action => "edit"
  post "/update_profile/:id", :controller => "profiles", :action => "update"

  # DELETE
  get "/delete_profile/:id", :controller => "profiles", :action => "destroy"
  #------------------------------

  # Routes for the Chessplayer resource:
  # CREATE
  get "/chessplayers/new", :controller => "chessplayers", :action => "new"
  post "/create_chessplayer", :controller => "chessplayers", :action => "create"

  # READ
  get "/chessplayers", :controller => "chessplayers", :action => "index"
  get "/chessplayers/:id", :controller => "chessplayers", :action => "show"

  # UPDATE
  get "/chessplayers/:id/edit", :controller => "chessplayers", :action => "edit"
  post "/update_chessplayer/:id", :controller => "chessplayers", :action => "update"

  # DELETE
  get "/delete_chessplayer/:id", :controller => "chessplayers", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
