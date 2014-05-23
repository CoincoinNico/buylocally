class AssetsController < ApplicationController
  def destroy
    Asset.find(params[:id]).destroy!

    render js: { status: 'OK' }
  end
end