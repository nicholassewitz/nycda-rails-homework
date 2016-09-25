class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action(:find_user, only: [:show, :edit, :update, :destroy])

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = current_user.users.create(user_params)
    redirect_to_user_if_valid('You successfully created a user')
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to_user_if_valid('You successfully created a user')
  end

  def destroy
    @user.destroy
    redirect_to(users_path)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params[:user].permit(:name,:headline,:profile,:email)
  end

  def redirect_to_user_if_valid(notice)
    redirect_to(@user, notice: notice) if @user.valid?
  end

  def redirect_to_user(notice)
    redirect_to(@user, notice: notice)
  end

end
