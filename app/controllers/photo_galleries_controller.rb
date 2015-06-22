class PhotoGalleriesController < ApplicationController


  def show
      @photo_gallery = PhotoGallery.find(params[:id])
  end 
    
    
end
