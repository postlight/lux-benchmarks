import { Controller } from 'lux-framework';

class TaskListsController extends Controller {
  params = [
    'name',
    'completed',
    'dueDate',
    'listId'
  ];
}

export default TaskListsController;
