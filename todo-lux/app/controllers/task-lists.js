import { Controller } from '@zacharygolba/lux';

class TaskListsController extends Controller {
  params = [
    'name',
    'completed',
    'dueDate',
    'listId'
  ];
}

export default TaskListsController;
