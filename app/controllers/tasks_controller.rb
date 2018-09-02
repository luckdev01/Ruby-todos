class TasksController < ApplicationController
	def new   # tasks#new action
		puts "Honey, I'm home!"
		@task = Task.new
	end
end
