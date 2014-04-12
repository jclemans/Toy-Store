class ProductUploadsController < ApplicationController

  def new
  end

  def create
    ProductUpload.new(params[:file].tempfile).parse!
    flash[:notice] = "CSV uploaded. See additions below!"
    redirect_to root_path
  end
end
