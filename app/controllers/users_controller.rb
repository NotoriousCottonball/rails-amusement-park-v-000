class UsersController < ApplicationController
<<<<<<< HEAD

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:alert] = "Sign Up Failed! Please Try Again."
      render :new
    end
  end

  def new
    @user = User.new
  end

  def show
    require_logged_in
    @user = current_user
    render '/users/show'
  end

   private

   def user_params
    params.require(:user).permit(
      :name,
      :height,
      :happiness,
      :nausea,
      :tickets,
      :password,
      :admin
    )
   end

=======
>>>>>>> 3e4e94c9cbbb7da13a7feef6fc6a662de8554a30
end
