json.week do
  json.array! @week_tasks do |day|
    json.day day[0]
    json.title day[0] == "other" ? "later" : Date.parse(day[0]).strftime('%a').downcase
    json.tasks do
      json.array! day[1] do |task|
        json.partial! "tasks/task", task: task
      end
    end
  end
end