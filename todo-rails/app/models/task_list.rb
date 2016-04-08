class TaskList < ActiveRecord::Base
  self.table_name = 'task_list'

  has_many :tasks
end
