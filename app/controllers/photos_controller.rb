class PhotosController < ApplicationController
    def new
        @photo = Photo.new
    end
    
    def create
        photo = Photo.create!(photo_params)
        photo.image.attach(params[:image])

        redirect_to '/user/1'
    end
    
    private
    def photo_params
        params.require(:photo).permit(:image)
    end
end