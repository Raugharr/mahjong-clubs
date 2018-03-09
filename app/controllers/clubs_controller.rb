class ClubsController < ApplicationController
	def index
		@clubs = Club.all;
	end

	def new
		@club = Club.new
	end

	def create
		@club = Club.new(club_params)

		if @club.save
			redirect_to @club
		else
			render 'new'
		end
	end

	def show
		@club = Club.find(params[:id])
		@title = @club.name
	end

	def schedule
		@title = "Schedule" 
		@club = Club.find(params[:id])
	end

	def rules
		@title = "Rules" 
		@club = Club.find(params[:id])
	end

	def destroy
		@club = Club.find(params[:id])
		@club.destroy

		redirect_to club_path
	end

	private
	def club_params
		params.require(:club).permit(:name)
	end
end
