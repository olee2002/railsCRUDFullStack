class MembersController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @member = @team.members.create(member_params)
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :age, :email, :phone_numbers)
  end
end
