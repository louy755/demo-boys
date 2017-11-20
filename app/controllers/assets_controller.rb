class AssetsController < ApplicationController
  def create
    @location = Location.find params[:location_id]
    @asset = @location.assets.build asset_params

    if @asset.save
      redirect_to @location, notice: "File was successfully uploaded."
    else
      redirect_to @location, alert: "File was not uploaded."
    end
  end

  protected

  def asset_params
    params.require(:asset).permit(:file)
  end
end
