Rails.application.routes.draw do
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
