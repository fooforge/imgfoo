class AlbumsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => [:edit, :update]

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @images = @album.images
  end

  def new
    @album = Album.new
  end

  def create
    @album = current_user.albums.build(params[:album])

    if @album.save!
      flash[:success] = "Album creation successfully!"
      redirect_to @album
    else
      logger.debug "#{album.error.inspect}"
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:id])
      flash[:success] = "Album properties successfully updated."
      redirect_to @album
    else
      @title = "Edit album"
      render 'edit'
    end
  end

  def destroy
    Album.find(params[:id]).destroy
    flash[:success] = "Album vanished."
    redirect_to root_path
  end

  private
    def authorized_user
      @album = current_user.albums.find_by_id(params[:id])
      redirect_to root_path if @album.nil?
    end
end
