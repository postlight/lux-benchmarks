/**
 * TaskList.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {
  connection: 'mysql',

  tableName: 'task_list',

  attributes: {
    name: {
      type: 'text',
      defaultsTo: 'To Do'
    },

    createdAt: {
      type: 'datetime',
      columnName: 'created_at'
    },

    updatedAt: {
      type: 'datetime',
      columnName: 'updated_at'
    },

    tasks: {
      collection: 'task',
      via: 'list'
    }
  }
};
