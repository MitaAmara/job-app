class UsersController < ApplicationController

	def index
	  @users = User.all
	end

	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params_user)
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to works_path, notice: "Thank you for registration!"
	  else
	    render 'new'
	  end
	end

	def edit
	  @user = User.find_by_id(params[:id])
	end

	def update
	  @user = User.find_by_id(params[:id])
	  if @user.update(params_user)
	  	flash[:success] = "Success Update Records"
	  	redirect_to works_path
	  else
	  	flash[:error] = "Data Not Valid"
	  	render 'edit'
	  end
	end

	private
	def params_user
	  params.require(:user).permit(:name, :address, :graduate, :experience, :email, :date_of_birth, :password, :password_confirmation)
	end
end
