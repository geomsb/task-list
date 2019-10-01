class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    task_id = params[:id].to_i
    @task = TASK[task_id]
    
    if @task.nil?
      head :not_found
      return
    end
  end
end
