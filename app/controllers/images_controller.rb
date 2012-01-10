class ImagesController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(params[:image])
    @image.save!

    redirect_to @image
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
    @images = Image.all
  end
end