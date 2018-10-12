class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(comment_params)

    redirect_to project_path(@project)
  end

  def show
    @comment = @post.current_user.comments.build
    respond_with(@comment)
  end

  private

  def find_project_id
    params.require(:comment).permit(:project_id)
  end

  def comment_params
    params.require(:comment).permit(:user_id, :user_name, :comment, :project_id)
  end
end
