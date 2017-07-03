class TopicsController < ApplicationController

# index action
	def index
		@topics = Topic.all
	end	
# new action
	def new
		@topic = Topic.new
	end	

# edit action
	def edit
		
		@topic = Topic.find(params[:id])
		
	end	

# update action
	def update
		@topic = Topic.find(params[:id])
		if @topic.update(topic_params)
			flash[:notice] = "Topic seccessufully Updatde"
			redirect_to topic_path(@topic)
		else render 'edit'
		end
			
	end	
	
# create action
	def create	
		@topic = Topic.new(topic_params) 
			if @topic.save
				flash[:notice] = "Topic seccessufully created"
				redirect_to topic_path(@topic)
			else 
				render 'new'		
			end						
	end	

# show action 
	def show
		@topic = Topic.find(params[:id])
	end	

# private method
	private
	def topic_params
		params.require(:topic).permit(:title, :description)
	end	 	


end	