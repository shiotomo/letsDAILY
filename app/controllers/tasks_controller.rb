class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = current_user.tasks.all
  end

  def show
  end

  def new
    @task = current_user.tasks.new
  end

  def edit
  end

  def create
    @task = current_user.tasks.new(task_params)

    if @task.save
      redirect_to @task
    else
      redirect_to :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task
    else
      redirect_to :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :body, :user_id)
  end
end
