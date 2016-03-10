class TaskListsController < ApplicationController
  before_action :set_task_list, only: [:show, :update, :destroy]

  def index
    limit = params[:limit] ? params[:limit].to_i : 25
    task_lists = TaskList.all.limit(limit)
    render json: serialize_models(task_lists)
  end

  def show
    render json: serialize_model(@task_list)
  end

  def create
    task_list = TaskList.new(task_list_params)

    if task_list.save
      render json: serialize_model(task_list)
    end
  end

  def update
    if @task_list.update(task_list_params)
      render json: serialize_model(@task_list)
    end
  end

  def destroy
    @task_list.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_list
      @task_list = TaskList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list
    # through.
    def task_list_params
      params.require(:task_list).permit(:name)
    end
end
