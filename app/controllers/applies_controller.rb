class AppliesController < ApplicationController
  def create
    @apply = Apply.new
    @apply.user = current_user
    @offer = Offer.find(params[:offer_id])
    @apply.offer = @offer

    redirect_to offer_path(@offer, applied: true) if @apply.save
  end
end
