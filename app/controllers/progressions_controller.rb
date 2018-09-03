class ProgressionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:create, :edit, :update, :destroy]
  before_action :set_progression, only: [:edit, :update, :destroy]

  def edit
  end

  def create
    @task.progressions.create(progression_params)
    redirect_to task_path(@task)
  end

  def update
    if @progression.update(progression_params)
      redirect_to task_path(@task)
    else
      redirect_to :edit
    end
  end

  def destroy
    @progression.destroy
    redirect_to task_path(@task)
  end

  private
  def set_progression
    @progression = @task.progressions.find(params[:id])
  end

  def set_task
    @task = Task.find(params[:task_id])
  end

  def progression_params
    params.require(:progression).permit(:comment, :task_id)
  end
end
