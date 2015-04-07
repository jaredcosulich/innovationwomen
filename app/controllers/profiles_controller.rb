class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to @profile
    else
      render action: 'new'
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render action: 'edit'
    end
  end

  def search
    @profiles = Profile.basic_search(params[:search])
    render action: 'index'
  end

  def destroy
    @profile.destroy
    redirect_to profiles_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(
      :name,
      :location,
      :title,
      :industry,
      :company,
      :summary,
      :twitter,
      :linkedin,
      :website,
      :blog_url,
      :origin_story,
      :passion,
      :best_story,
      :travel_distance,
      :charge,
      :video,
      :keywords,
      :picture,
    )
  end
end
