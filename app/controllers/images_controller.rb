class ImagesController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => [:edit, :update]

  def index
    @images = Image.all
  end
  
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.js { render :action=>:application }
      format.html
    end
  end
  
  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(params[:image])

    if @image.save!
      flash[:success] = "Image upload succeeded."
      Image.set_exif_data @image
    else
      logger.debug "#{@image.error.inspect}"
    end

    redirect_to @image
  end

  def edit
    @image = Image.find(params[:id])
    @title = "Edit image"
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      flash[:success] = "Image updated."
      redirect_to @image
    else
      @title = "Edit image"
      render 'edit'
    end
  end

  def destroy
    Image.find(params[:id]).destroy
    flash[:success] = "Image vanished."
    redirect_to images_path
  end

  private
    def get_exif_data
      MiniExifTool.command = '-common'
      @exif_data = MiniExifTool.new @image.attachment.path
    end  

    def authorized_user
      @image = current_user.images.find_by_id(params[:id])
      redirect_to root_path if @image.nil?
    end
end