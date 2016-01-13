class MainController < ApplicationController
  def index
  	if current_user 
  		redirect_to user_dashboard_path(current_user.name)
  	end
  end

  def dashboard

  	if current_user
  		@user = current_user
  		@user_basic = Basic.find(1)
  	else
  		redirect_to root_path
  	end 


  end
end
