class NewsController < ApplicationController
  before_action :authenticate_staff!, except: [:index, :show]

  def new
    @new = News.new
  end

  def create
    @new = News.new(new_params)
    @new.staff_id = current_staff.id
    if @new.save
      redirect_to news_index_path(@new.id)
    else
      render :new
    end
  end

  def edit
    @new = News.find(params[:id])
  end

  def update
    @new = News.find(params[:id])
    @new.update(new_params)
    if @new.save
      redirect_to news_path(@new.id)
    else
      redirect_to edit_news_path(@new.id)
    end
  end

  def destroy
    @new = News.find(params[:id])
    @new.destroy
    redirect_to news_index_path
  end

  def index
    @news = News.page(params[:page]).reverse_order
  end

  def show
    @new = News.find(params[:id])
  end

  private
  def new_params
    params.require(:news).permit(:creates_at, :updated_at, :title, :body, :contributor)
  end
end
