class Task < ActiveRecord::Base
  self.table_name = 'task'

  belongs_to :list, class_name: 'TaskList'
end
