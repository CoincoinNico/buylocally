class AssetsController < ApplicationController
  def destroy
    Asset.find(params[:id]).destroy!

    render json: { status: 'OK' }
  end
end