class CamerasController < ApplicationController
  def index
    @cameras = Camera.all
  end

  def show
    find_camera
  end

  def new
    @camera = Camera.new
  end

  def create
    @camera = Camera.create(camera_params)
  end

  def edit
    find_camera
  end

  def update
    find_camera
    @camera.update(camera_params)
    redirect_to_camera(cameras_path)
  end

  def destroy
    @camera = Camera.find(params[:id])
    @camera.destroy
    redirect_to(cameras_path)
  end


  private

  def find_camera
  @camera = Camera.find(params[:id])
  end

  def camera_params
  params[:camera].permit(:product_name,:price)
  end

  def redirect_to_camera(notice)
    redirect_to(@camera, notice: notice)
  end

end
