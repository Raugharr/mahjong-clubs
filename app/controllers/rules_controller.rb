class RulesController < ApplicationController
	layout "club-nav"
	def create
		@club = Club.find(params[:club_id])
		@rule = @club.rules.create(rule_params)
		redirect_to club_rules_path(@club)
	end

	def index 
		@title = "Rules"
		@club = Club.find(params[:club_id])
	end

	def edit
	end

	def destroy
		@club = Club.find(params[:club_id])
		@rule = @club.rules.find(params[:id]) 

		@rule.destroy
		redirect_to club_rules_path(@club)
	end
	def show
	end

	private
	def rule_params
		params.require(:rule).permit(:owner, :text)
	end
end
