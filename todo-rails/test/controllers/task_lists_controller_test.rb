require 'test_helper'

class TaskListsControllerTest < ActionController::TestCase
  setup do
    @task_list = task_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_list" do
    assert_difference('TaskList.count') do
      post :create, task_list: { name: @task_list.name }
    end

    assert_redirected_to task_list_path(assigns(:task_list))
  end

  test "should show task_list" do
    get :show, id: @task_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_list
    assert_response :success
  end

  test "should update task_list" do
    patch :update, id: @task_list, task_list: { name: @task_list.name }
    assert_redirected_to task_list_path(assigns(:task_list))
  end

  test "should destroy task_list" do
    assert_difference('TaskList.count', -1) do
      delete :destroy, id: @task_list
    end

    assert_redirected_to task_lists_path
  end
end
