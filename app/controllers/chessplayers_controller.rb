class ChessplayersController < ApplicationController
  def index
    @chessplayers = Chessplayer.all

    render("chessplayers/index.html.erb")
  end

  def show
    @chessplayer = Chessplayer.find(params[:id])

    render("chessplayers/show.html.erb")
  end

  def new
    @chessplayer = Chessplayer.new

    render("chessplayers/new.html.erb")
  end

  def create
    @chessplayer = Chessplayer.new

    @chessplayer.user_id = params[:user_id]
    @chessplayer.first_name = params[:first_name]
    @chessplayer.last_name = params[:last_name]
    @chessplayer.dob = params[:dob]
    @chessplayer.gender = params[:gender]
    @chessplayer.uscf_id = params[:uscf_id]
    @chessplayer.uscf_title = params[:uscf_title]
    @chessplayer.uscf_rating = params[:uscf_rating]
    @chessplayer.fide_id = params[:fide_id]
    @chessplayer.fide_title = params[:fide_title]
    @chessplayer.fide_rating = params[:fide_rating]
    @chessplayer.federation = params[:federation]

    save_status = @chessplayer.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chessplayers/new", "/create_chessplayer"
        redirect_to("/chessplayers")
      else
        redirect_back(:fallback_location => "/", :notice => "Chessplayer created successfully.")
      end
    else
      render("chessplayers/new.html.erb")
    end
  end

  def edit
    @chessplayer = Chessplayer.find(params[:id])

    render("chessplayers/edit.html.erb")
  end

  def update
    @chessplayer = Chessplayer.find(params[:id])

    @chessplayer.user_id = params[:user_id]
    @chessplayer.first_name = params[:first_name]
    @chessplayer.last_name = params[:last_name]
    @chessplayer.dob = params[:dob]
    @chessplayer.gender = params[:gender]
    @chessplayer.uscf_id = params[:uscf_id]
    @chessplayer.uscf_title = params[:uscf_title]
    @chessplayer.uscf_rating = params[:uscf_rating]
    @chessplayer.fide_id = params[:fide_id]
    @chessplayer.fide_title = params[:fide_title]
    @chessplayer.fide_rating = params[:fide_rating]
    @chessplayer.federation = params[:federation]

    save_status = @chessplayer.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/chessplayers/#{@chessplayer.id}/edit", "/update_chessplayer"
        redirect_to("/chessplayers/#{@chessplayer.id}", :notice => "Chessplayer updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Chessplayer updated successfully.")
      end
    else
      render("chessplayers/edit.html.erb")
    end
  end

  def destroy
    @chessplayer = Chessplayer.find(params[:id])

    @chessplayer.destroy

    if URI(request.referer).path == "/chessplayers/#{@chessplayer.id}"
      redirect_to("/", :notice => "Chessplayer deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Chessplayer deleted.")
    end
  end
end
