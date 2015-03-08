class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
  end

  def about
  end

  def features
  end

  def build_a_blog
  end

  def build_ecommerce_site
  end

  def contact
  end

  def dashboard
  end
end
