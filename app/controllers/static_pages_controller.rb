class StaticPagesController < ApplicationController
  layout 'simple_layout', :only => [:splash]

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def splash
  end
end
