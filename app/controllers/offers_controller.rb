class OffersController < ApplicationController
  def index
    #@offers = Offer.all
    @offers = Offer.geocoded
    @markers = @offers.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end
  def show
    @offer = Offer.find(params[:id])
    @recruiter = Recruiter.new

    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude
      }
    ]
  end
end
