class WorksController < ApplicationController
  # before_filter :authorize, only: [:edit, :update]

  def index
    @works = Work.all
  end

  def new
  	@work = Work.new
  end

  def edit
    @work = WOrk.find_by_id(params[:id])
  end

  def update
    @work = Work.find_by_id(params[:id])
    @work.update_attributes(params[:user])
    @work.user.build
  end

  def create
  	@work = Work.new(params_work)
  	if @work.save
  		flash[:success] = "Success Add Records"
  		redirect_to action: 'index'
  	else
  		flash[:error] = "Data Not Valid"
  		render 'new'
  	end
  end

  private
  def params_work
  	params.require(:work).permit(:title, :position, :location, :description)
  end
end
