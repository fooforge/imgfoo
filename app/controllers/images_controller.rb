class ImagesController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(params[:image])
    if @image.save!
      flash[:success] = "Image upload succeeded."
    else
      logger.debug "#{@image.error.inspect}"
    end

    redirect_to @image
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
    @images = Image.all
  end
end