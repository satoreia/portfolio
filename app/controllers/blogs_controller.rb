class BlogsController < ApplicationController
  before_action :authenticate_staff!, except: [:index, :show]

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.staff_id = current_staff.id
    if @blog.save
      redirect_to blog_path(@blog.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end


  private
  def blog_params
    params.require(:blog).permit(:creates_at, :updated_at, :title, :body, :blog_image_id, :contributor)
  end
end
