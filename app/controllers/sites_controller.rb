class SitesController < ApplicationController
  before_action :authenticate_user!, only: [:home]

  def top
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
