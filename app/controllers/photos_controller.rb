class PhotosController < ApplicationController
  
  def new
    @photo_gallery = PhotoGallery.find(params[:id])
    @photos = @photo_gallery.photos.build
  end 
  
  def show
  end

end