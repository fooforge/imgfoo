class PagesController < ApplicationController

  def home
    @title = "Home"
    @default_image = Image.first
    @rnd_image = Image.random
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def not_found
    @title = "404"
  end
end