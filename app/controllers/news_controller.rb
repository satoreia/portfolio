class NewsController < ApplicationController
  before_action :authenticate_staff!, except: [:index, :show]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end
end
