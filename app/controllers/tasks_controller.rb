class TasksController < ApplicationController
  before_action :all_task, only: [:about, :show, :edit]

  def about
  end

  def show
    @task = @tasks.find { |task| task["id"] == params[:id].to_i }
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def edit
    @task = @tasks.find { |task| task["id"] == params[:id].to_i }
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to root_path
  end

  private
  def all_task
    @tasks = Task.all
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
