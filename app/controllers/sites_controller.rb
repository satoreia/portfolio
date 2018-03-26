class SitesController < ApplicationController
  before_action :authenticate_staff!, only: [:staff_home]

  def top
    @blogs = Blog.page(params[:page]).reverse_order
    @news = News.page(params[:page]).reverse_order
  end

  def about
    @abouts = About.all
  end

  def price
  end

  def access
  end

  def qanda
    @questions = Question.all
  end

  def staff_home

  end
end
