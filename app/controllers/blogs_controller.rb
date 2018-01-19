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
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    if @blog.save
      redirect_to blog_path(@blog.id)
    else
      redirect_to edit_blog_path(@blog.id)
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
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
