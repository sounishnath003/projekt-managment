class HomeController < ApplicationController
  def index
    if user_signed_in?
      @teams = Team.where('id = ?', current_user.team_id)
      @projects = Project.where('team_id = ?', current_user.team_id)
    end

    if user_signed_in? && current_user.admin == true
      redirect_to rails_admin_path
    else
      main_app.root_path
     end


    @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: current_user, owner_type: "User")
  end
end
