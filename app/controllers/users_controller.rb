class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
    @users = User.all

    respond_to do |format|
      format.xml  { render xml: @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.xml  { render xml: @user }
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.xml  { render xml: @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to :users }
        format.xml { render xml: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.xml { render xml: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
    )
  end
end
