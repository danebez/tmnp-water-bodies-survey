require 'test_helper'

class RespondentsControllerTest < ActionController::TestCase
  setup do
    @respondent = respondents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:respondents)
  end

  test "should get new1" do
    get :new1
    assert_response :success
  end

  test "should create respondent" do
    assert_difference('Respondent.count') do
      post :create, respondent: { email: @respondent.email, fullname: @respondent.fullname }
    end

    assert_redirected_to respondent_path(assigns(:respondent))
  end

  test "should show respondent" do
    get :show, id: @respondent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @respondent
    assert_response :success
  end

  test "should update respondent" do
    put :update, id: @respondent, respondent: { email: @respondent.email, fullname: @respondent.fullname }
    assert_redirected_to respondent_path(assigns(:respondent))
  end

  test "should destroy respondent" do
    assert_difference('Respondent.count', -1) do
      delete :destroy, id: @respondent
    end

    assert_redirected_to respondents_path
  end
end
