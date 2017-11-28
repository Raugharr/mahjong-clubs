class SchedulesController < ApplicationController
	layout "club-nav"
	def create
		@club = Club.find(params[:club_id])
		@schedule= @club.schedules.create(schedule_params)
		redirect_to club_schedules_path(@club)
	end
	def index
		@title = "Schedule"
		@club = Club.find(params[:club_id])
	end

	def destroy
		@club = Club.find(params[:club_id])
		@schedule = @club.schedules.find(params[:id]) 

		@schedule.destroy
		redirect_to club_schedules_path(@club)
	end
	private
	def schedule_params
		params[:schedule][:day].downcase!
		params.require(:schedule).permit(:repeat, :day, :start, :end)
	end
end
