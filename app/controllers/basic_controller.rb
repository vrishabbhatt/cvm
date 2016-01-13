class BasicController < ApplicationController

	def new 
		# @basic = Basic.new
		
	end

	def create
		@basic = Basic.new(basic_params)
	
   		if @basic.save
      		redirect_to user_dashboard_path(current_user.name)
   		else
      		# @subjects = Subject.all
      		render :action => 'new'
    	end 	
	end

	private

	def basic_params
		params.require(:basic).permit(:full_name , :phone ,:twitter ,:relevant ,:email ,:linkedin , :skype)
	end



	
end
