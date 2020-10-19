class ProfilesController < ApplicationController
  def show
    @user = current_user
    #@offer = Offer.find(params[:id])
    #@apply_existing = current_user.applies.where(offer_id: @offer)
  end

  def edit
    flash[:alert] = "toto"
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:interpersonal_skills, :rigor, :independence, :communication, :teamwork, :creativity, :initiative, :stress_management, :perseverance, :decision_making, :curiosity, :adaptability, :enthusiam, :flexibility, :empathy)
  end
end
