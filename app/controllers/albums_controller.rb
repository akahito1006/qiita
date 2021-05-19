class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(album_params)
    @album.save
    redirect_to root_path
  end
  
  private
  def album_params
    params.require(:album).permit(:image)
  end
end
