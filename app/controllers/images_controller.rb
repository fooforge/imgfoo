class ImagesController < ApplicationController
#  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
#  before_filter :correct_user, :only => [:edit, :update]
#  before_filter :admin_user,   :only => :destroy

  def new
    @image = Image.new
  end

  def create
    @image = Image.create(params[:image])
    @image.save

    redirect_to @image
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
    @images = Image.all
  end
end
