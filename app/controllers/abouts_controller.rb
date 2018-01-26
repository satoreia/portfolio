class AboutsController < ApplicationController
  before_action :authenticate_staff!

  def new
    @about = About.new
  end

  def create
    @about = About.new(about_params)
    @about.staff_id = current_staff.id
    if @about.save
      redirect_to aboutus_path
    else
      render :new
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    @about.staff_id = current_staff.id
    if @about.update(about_params)
      redirect_to aboutus_path
    else
      render :template => "abouts/edit"
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to aboutus_path
  end

  private
    def about_params
      params.require(:about).permit(:title, :body)
    end
end
