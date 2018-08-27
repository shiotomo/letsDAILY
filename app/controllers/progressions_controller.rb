class ProgressionsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @task = Task.find(params[:task_id])
    @progression = @task.progression.find(params[:id])
  end

  def create
    @task = Task.find(params[:task_id])
    @task.progression.create(progression_params)
    redirect_to task_path(@task)
  end

  def update
  end

  def destroy
  end

  private
  def progression_params
    params.require(:progression).permit(:comment, :task_id)
  end
end
