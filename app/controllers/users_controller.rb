class UsersController < ApplicationController
	before_action :authorize, except: [:create, :new]

	  def show
		  @user = User.find(session[:user_id]) if session[:user_id]
	    @accounts = Account.where(user_id: @user.id.to_i)
      totalize = []
      @accounts.each do |account|
        totalize.push(account.amount)
      end
      @total_amount = totalize.inject(:+)
    end

	  def index
  		@users = User.all
  	end

  	def new 
  		@user = User.new
  	end

  	def create
  		@user = User.new(user_params)
    	if @user.save
  			redirect_to user_path(@user)
    	else
      		render "new"
   		end
  	end

    def edit 
      @user = User.find(params[:id])
    end

    def update 
      @user = User.find(params[:id])  
      @user.update(user_params)
      redirect_to @user
    end

  private
  	def user_params
  		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :avatar_url)
  	end

end