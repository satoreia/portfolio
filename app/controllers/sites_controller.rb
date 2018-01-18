class SitesController < ApplicationController
  before_action :authenticate_staff!, only: [:staff_home]

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
