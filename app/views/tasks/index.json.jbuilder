json.tasks do
  json.array! @tasks do |task|
    json.partial! "tasks/task", task: task
  end
end