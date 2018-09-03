class TasksController < ApplicationController
	def new   # tasks#new action
		puts "Honey, I'm home!"
		@task = Task.new
	end
	def create
		@task = Task.create(task_params)
		redirect_to root_path
	end
	private
	def task_params
		params.require(:task).permit(:title, :note, :completed)
	end
end
