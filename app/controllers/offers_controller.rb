class OffersController < ApplicationController
  def index
    # @offers = Offer.all

    @user   = current_user
    @offers = Offer.select('offers.*', "#{@user.matching_percentage_calc} AS matching_percentage")
                   .order('matching_percentage DESC')
                   .includes(recruiter: { logo_attachment: :blob })
                   .geocoded

    @offers  = @offers.near(current_user.location, 10) if current_user.location.present?
    @offers  = @offers.where(activity: current_user.activity) if current_user.activity.present?
    @offers  = @offers.where(contract: current_user.contract) if current_user.contract.present?

    @markers = @offers.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('marker.svg')
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @recruiter = Recruiter.new
    @user = current_user

    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: @offer }),
        image_url: helpers.asset_url('map_marker.svg')
      }
    ]
    @user_skills = User::SOFT_SKILLS.map { |soft_skill| @user[soft_skill] }
    @offer_skills = User::SOFT_SKILLS.map { |soft_skill| @offer[soft_skill] }
    @already_applied = current_user.applies.where(offer_id: @offer).exists?
  end
end
