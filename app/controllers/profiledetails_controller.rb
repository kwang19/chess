class ProfiledetailsController < ApplicationController
  def index
    @profiledetails = Profiledetail.all

    render("profiledetails/index.html.erb")
  end

  def show
    @profiledetail = Profiledetail.find(params[:id])

    render("profiledetails/show.html.erb")
  end

  def new
    @profiledetail = Profiledetail.new

    render("profiledetails/new.html.erb")
  end

  def create
    @profiledetail = Profiledetail.new

    @profiledetail.profiles_id = params[:profiles_id]
    @profiledetail.photo = params[:photo]
    @profiledetail.events = params[:events]
    @profiledetail.comment = params[:comment]

    save_status = @profiledetail.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/profiledetails/new", "/create_profiledetail"
        redirect_to("/profiledetails")
      else
        redirect_back(:fallback_location => "/", :notice => "Profiledetail created successfully.")
      end
    else
      render("profiledetails/new.html.erb")
    end
  end

  def edit
    @profiledetail = Profiledetail.find(params[:id])

    render("profiledetails/edit.html.erb")
  end

  def update
    @profiledetail = Profiledetail.find(params[:id])

    @profiledetail.profiles_id = params[:profiles_id]
    @profiledetail.photo = params[:photo]
    @profiledetail.events = params[:events]
    @profiledetail.comment = params[:comment]

    save_status = @profiledetail.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/profiledetails/#{@profiledetail.id}/edit", "/update_profiledetail"
        redirect_to("/profiledetails/#{@profiledetail.id}", :notice => "Profiledetail updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Profiledetail updated successfully.")
      end
    else
      render("profiledetails/edit.html.erb")
    end
  end

  def destroy
    @profiledetail = Profiledetail.find(params[:id])

    @profiledetail.destroy

    if URI(request.referer).path == "/profiledetails/#{@profiledetail.id}"
      redirect_to("/", :notice => "Profiledetail deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Profiledetail deleted.")
    end
  end
end
