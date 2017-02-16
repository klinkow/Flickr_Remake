class ImagesController < ApplicationController

  def index
    @images = current_user.images
    @current_user = current_user
  end

  def new
    @current_user = current_user
    @image = @current_user.images.new
  end

  def create
    @current_user = current_user
    @image = @current_user.images.new(image_params)
    # tag_array = {:user_id=> @current_user.id, :image_id => @image.id, :tag => false}
    Tag.create(user_id: @current_user.id, image_id: @image.id, tag: false)
    if @image.save
      redirect_to  user_images_path(current_user.id)
    else
      render :new
    end
  end

private
  def image_params
    params.require(:image).permit(:photo_file, :user_id, :image_id, :tag)
  end



end
