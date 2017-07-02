class DomainsController < ApplicationController

	def new 
		@domain = Domain.new
		
	end
# create action	
	def create
# a new or usualy way
	@domain = Domain.new(domains_params)
		if @domain.save
			flash[:notice] = "Your Post is succefully saved"
			redirect_to domain_path(@domain)
			
		else
			render 'new'
		
		end	

#old way to save to DB
# 		@domain = Domain.new(params_domain)
# 		
# 		@domain.save
# 		redirect_to domain_path(@domain)
	
	end	
# a private method 
	private
	
	def domains_params
		
		params.require(:domain).permit(:title, :description)
		
	end	
# show action	
	def show
		@domain = Domain.find(params[:id])	
	end	
	


	
			
end	