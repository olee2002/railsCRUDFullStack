class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.save
    redirect_to @team
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to @team
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    message = "Team has been deleted!"
    redirect_to @team
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
