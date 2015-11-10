class AdvertisementController < ApplicationController
  def index
    @advertisement = advertisement.all
  end

  def show
    @advertisement = advertisement.find(params[:id])
  end

  def new
    @advertisement = advertisement.new
  end

  def create
    @advertisement = advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.copy = params[:advertisement][:copy]
    @advertisement.price = params[:advertisement][:price]

    if @advertisement.save
      flash[:notice] = "Advertisement was saved!"
      redirect_to @advertisement
    else
      flash[:error] = "Ad could not be saved, try again"
      render :new
  end
end
