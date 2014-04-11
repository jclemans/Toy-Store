class ProductUploadsController < ApplicationController

  def new
  end

  def create
    ProductUpload.new(params[:file].tempfile).parse!
    redirect_to root_path
  end
end
