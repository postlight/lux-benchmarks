class TaskListSerializer < ApplicationSerializer
  attributes :name, :created_at, :updated_at

  has_many :tasks
end
