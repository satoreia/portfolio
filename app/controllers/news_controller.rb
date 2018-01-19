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
  end

  def update
  end

  def destroy
  end

  def index
    @news = News.all
  end

  def show
    @new = News.find(params[:id])
  end

  private
  def new_params
    params.require(:news).permit(:creates_at, :updated_at, :title, :body, :contributor)
  end
end
