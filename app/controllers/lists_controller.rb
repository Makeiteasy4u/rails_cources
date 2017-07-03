class ListsController < ApplicationController

	# actions
	
	def new 
		@list = List.new
		
	end
	
	def show
		@list = List.find(params[:id])	
	end
	
	def update
	
		@list = List.find(params[:id])
			if @list.update(lists_params)
				flash[:notice] = "Your post are seccefully UPDATED"
				redirect_to list_path(@list)
			else render 'edit' 
			end
					
		
	end		 
	
	def create
		@list = List.new(lists_params)
			if @list.save
				flash[:notice] = "Your post are seccefully created"
				redirect_to list_path(@list)
			else render 'new'
			end	
						
	end			
	
	private
	def lists_params
		params.require(:list).permit(:title, :description)	
	end	
	
	
end	