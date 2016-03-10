import { Serializer } from '@zacharygolba/lux';

class TaskListsSerializer extends Serializer {
  attributes = [
    'name',
    'createdAt',
    'updatedAt'
  ];

  hasMany = [
    'tasks'
  ];
}

export default TaskListsSerializer;
