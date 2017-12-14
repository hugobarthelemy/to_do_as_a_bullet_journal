class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @week_tasks = week_tasks
  end

  private

  def week_tasks(date = Date.today)
    week_tasks = {}
    # define the monday date of the week
    day_date_start_the_week = date - date
    # search for each day
    for index in 0..6
      week_tasks["#{(day_date_start_the_week + index)}"] = Task.where(due_date: day_date_start_the_week + index)
    end
    # search for no define due date
    week_tasks["other"] = Task.where(due_date: nil)
    week_tasks
  end
end
