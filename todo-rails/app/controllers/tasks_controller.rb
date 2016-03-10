class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    limit = params[:limit] ? params[:limit].to_i : 25
    tasks = Task.all.limit(limit)
    render json: serialize_models(tasks)
  end

  def show
    render json: serialize_model(task)
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: serialize_model(task)
    end
  end

  def update
    if @task.update(task_params)
      render json: serialize_model(@task)
    end
  end

  def destroy
    @task.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list
    # through.
    def task_params
      params.require(:task).permit(:name, :completed, :due_date, :list_id)
    end
end
