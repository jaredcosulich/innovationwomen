class TopicsController < ApplicationController
  before_action :set_profile
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics/1/topics/1
  def show
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  def create
    @topic = @profile.topics.new(topic_params)

    if @topic.save
      redirect_to @profile, notice: 'Topic was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      redirect_to @profile, notice: 'Topic was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def search
    @topics = Topic.basic_search(params[:search])
    render action: 'index'
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
    redirect_to @profile, notice: 'Topic was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def set_topic
    @topic = @profile.topics.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def topic_params
    params.require(:topic).permit(:title, :description)
  end
end
