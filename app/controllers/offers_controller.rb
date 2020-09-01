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
    @user = current_user

    @markers = [
      {
        lat: @offer.latitude,
        lng: @offer.longitude
      }
    ]
    @user_skills = User::SOFT_SKILLS.map { |soft_skill| @user[soft_skill] }
    @offer_skills = User::SOFT_SKILLS.map { |soft_skill| @offer[soft_skill] }
    @already_applied = current_user.applies.where(offer_id: @offer).exists?
  end
end
