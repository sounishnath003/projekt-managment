class AddTeamIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :team_id, :integer
  end
end
