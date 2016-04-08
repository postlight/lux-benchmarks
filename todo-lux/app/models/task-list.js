import { Model } from 'lux-framework';

class TaskList extends Model {
  static attributes = {
    name: {
      type: 'text',
      defaultValue: 'To Do'
    }
  };
}

export default TaskList;
