class UsersController < ApplicationController
  before_action :find_user


  def dashboard
    @posts = Post.all
    @bookings = Booking.all
  end

  def edit
  end

  def update
    @user = User.update(user_params)
    redirect_to dashboard_path, notice: "User has been updated"
  end


  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :gender, :phone_number, :birth_date, :photo)
  end

  def find_user
    @user = current_user
  end
end
