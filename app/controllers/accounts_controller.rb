class AccountsController < ApplicationController
	def index
		@accounts = Account.where(user_id: session[:user_id])
		@user = User.find(session[:user_id])
	end

	def show
		@account = Account.find(params[:id])
		@user = User.find(session[:user_id])
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(account_params)
		if @account.save
  			redirect_to user_path(User.find(session[:user_id]))
    	else
      		render "new"
   		end
	end

	def edit
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.find(params[:id])  
    	@account.update(account_params)
    	redirect_to user_path(User.find(session[:user_id]))
	end

  private
  	def account_params
  		params.require(:account).permit(:account_name, :amount, :status, :user_id)
  	end

end