class OffersController < ApplicationController
  def index
    # @offers = Offer.all

    @user = current_user
    @offers = Offer.select('offers.*', "#{@user.matching_percentage_calc} AS matching_percentage")
                   .order('matching_percentage DESC')
                   .geocoded
                   .includes(recruiter: { logo_attachment: :blob })
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
    @already_applied = current_user.applies.where(offer_id: @offer).exists?
  end
end
