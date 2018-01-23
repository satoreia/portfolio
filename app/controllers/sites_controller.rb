class SitesController < ApplicationController
  before_action :authenticate_staff!, only: [:staff_home]

  def top
    @blogs = Blog.page(params[:page]).reverse_order
    @news = News.page(params[:page]).reverse_order
  end

  def about
  end

  def price
  end

  def access
  end

  def qanda
  end

  def staff_home

  end
end
