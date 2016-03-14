import { Controller } from '@zacharygolba/lux';

class TasksController extends Controller {
  params = [
    'name',
    'dueDate',
    'completed',
    'listId'
  ];
}

export default TasksController;
