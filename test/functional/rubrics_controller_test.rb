require 'test_helper'

class RubricsControllerTest < ActionController::TestCase
  setup do
    @rubric = rubrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rubric" do
    assert_difference('Rubric.count') do
      post :create, rubric: { parent_id: @rubric.parent_id, slug: @rubric.slug, title: @rubric.title }
    end

    assert_redirected_to rubric_path(assigns(:rubric))
  end

  test "should show rubric" do
    get :show, id: @rubric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rubric
    assert_response :success
  end

  test "should update rubric" do
    put :update, id: @rubric, rubric: { parent_id: @rubric.parent_id, slug: @rubric.slug, title: @rubric.title }
    assert_redirected_to rubric_path(assigns(:rubric))
  end

  test "should destroy rubric" do
    assert_difference('Rubric.count', -1) do
      delete :destroy, id: @rubric
    end

    assert_redirected_to rubrics_path
  end
end
