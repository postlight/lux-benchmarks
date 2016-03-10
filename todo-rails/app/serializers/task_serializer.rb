class TaskSerializer < ApplicationSerializer
  attributes :name, :completed, :due_date, :created_at, :updated_at

  has_one :list
end
