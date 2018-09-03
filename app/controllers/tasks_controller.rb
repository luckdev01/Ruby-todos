class TasksController < ApplicationController
	def new   # tasks#new action
		puts "Honey, I'm home!"
		@task = Task.new
	end
	def create
		@task = Task.create(task_params)
    @tasks = Task.all
	end
	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		@tasks = Task.all
	end
	private
	def task_params
		params.require(:task).permit(:title, :note, :completed)
	end
end
