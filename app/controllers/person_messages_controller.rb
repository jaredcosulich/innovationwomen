class PersonMessagesController < ApplicationController
  before_action :set_person_message, only: [:show, :edit, :update, :destroy]

  # GET /person_messages
  def index
    @person_messages = PersonMessage.all
  end

  # GET /person_messages/1
  def show
  end

  # GET /person_messages/new
  def new
    @person_message = PersonMessage.new
  end

  # GET /person_messages/1/edit
  def edit
  end

  # POST /person_messages
  def create
    @person_message = PersonMessage.new(person_message_params)

    if @person_message.save
      redirect_to @person_message, notice: 'Person message was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /person_messages/1
  def update
    if @person_message.update(person_message_params)
      redirect_to @person_message, notice: 'Person message was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /person_messages/1
  def destroy
    @person_message.destroy
    redirect_to person_messages_url, notice: 'Person message was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_message
      @person_message = PersonMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_message_params
      params.require(:person_message).permit(:person_id, :message_id)
    end
end
