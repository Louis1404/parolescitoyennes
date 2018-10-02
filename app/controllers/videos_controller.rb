class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to video_path(@video)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end
end
