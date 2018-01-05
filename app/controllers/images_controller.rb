class ImagesController < ApplicationController
  def upload
    @image = Image.new
  end

  def display
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to display_path
      # add flash success
    else
      render 'upload'
      # flash error
    end
  end

  private

    def image_params
      params.require(:image).permit(:name, :description)
    end
end
