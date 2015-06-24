class PhotoGalleriesController < ApplicationController



  def show
      @photo_gallery = PhotoGallery.find(params[:id])
  end 

    
    def edit 
      @photo_gallery = PhotoGallery.find(params[:id])
      @photo = @photo_gallery.photos.build
    end 


    
    def update
      @photo_gallery = PhotoGallery.find(params[:id])
    #   @photos = @photo_gallery.photos.build(photo_gallery_params)
      
      if @photo_gallery && params[:photos]
          params[:photos]['image'].each do |a|
              @photo = @photo_gallery.photos.create!(:image => a, 
              :photo_gallery_id => @photo_gallery.id )
          end 
         respond_to do |format|
            format.html { redirect_to @photo_gallery, notice: 'Photo upload successful.' }
         end 
      else 
          respond_to do |format|
            format.html { render action: 'show', alert: 'No photos were uploaded.'}
          end 
      end 
    end 



 private
   def post_params
      params.require(:post).permit(:title, photos_attributes: [:id, :photo_gallery_id, :image])
   end


end 
