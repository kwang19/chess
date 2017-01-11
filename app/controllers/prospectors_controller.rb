class ProspectorsController < ApplicationController
  def index
    @q = Prospector.ransack(params[:q])
    @prospectors = @q.result(:distinct => true).includes(:comments, :user).page(params[:page]).per(10)

    render("prospectors/index.html.erb")
  end

  def show
    @comment = Comment.new
    @prospector = Prospector.find(params[:id])

    render("prospectors/show.html.erb")
  end

  def new
    @prospector = Prospector.new

    render("prospectors/new.html.erb")
  end

  def create
    @prospector = Prospector.new

    @prospector.user_id = params[:user_id]
    @prospector.name = params[:name]

    save_status = @prospector.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/prospectors/new", "/create_prospector"
        redirect_to("/prospectors")
      else
        redirect_back(:fallback_location => "/", :notice => "Prospector created successfully.")
      end
    else
      render("prospectors/new.html.erb")
    end
  end

  def edit
    @prospector = Prospector.find(params[:id])

    render("prospectors/edit.html.erb")
  end

  def update
    @prospector = Prospector.find(params[:id])
    @prospector.name = params[:name]

    save_status = @prospector.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/prospectors/#{@prospector.id}/edit", "/update_prospector"
        redirect_to("/prospectors/#{@prospector.id}", :notice => "Prospector updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Prospector updated successfully.")
      end
    else
      render("prospectors/edit.html.erb")
    end
  end

  def destroy
    @prospector = Prospector.find(params[:id])

    @prospector.destroy

    if URI(request.referer).path == "/prospectors/#{@prospector.id}"
      redirect_to("/", :notice => "Prospector deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Prospector deleted.")
    end
  end
end
