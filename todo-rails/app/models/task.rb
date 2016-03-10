class Task < ActiveRecord::Base
  belongs_to :list, class_name: 'TaskList'
end
