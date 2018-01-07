class ImagesController < ApplicationController
  def upload
    @image = Image.new
  end

  def index
    @images = Image.all
    @random_image = Image.limit(1).order("RANDOM()").first

    # Get correct server url, regardless of the environment
    @req_url = request.base_url + "/random"
  end

  def random
    @random_image = Image.limit(1).order("RANDOM()").first
    render json: { status: 200,
                   data: @random_image }
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = "Your picture was successfully uploaded !"
      redirect_to images_path
    else
      render 'upload'
    end
  end

  private

    def image_params
      params.require(:image).permit(:name, :description)
    end
end
