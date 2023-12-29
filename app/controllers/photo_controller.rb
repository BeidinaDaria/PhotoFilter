class PhotoController < ApplicationController
    def new
        @photo = Photo.new
    end
    
    def create
        debbuggere
        photo = Photo.create!(photo_params)
        photo.image.attach(params[:image])

        redirect_to '/'
    end
    
    private
    def photo_params
        params.require(:photo).permit(:image)
    end
end