class DomainsController < ApplicationController

	def new 
		@domain = Domain.new
		
	end
	
	def create
		
		@domain = Domain.new(params_domain)
		
		@domain.save
		redirect_to domains_show(@domain)
	
	end	
	
	private
	
	def params_domain
		
		params.require(:domain).permit(:title, :description)
		
	end	
	
			
end	