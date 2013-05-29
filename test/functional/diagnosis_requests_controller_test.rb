require 'test_helper'

class DiagnosisRequestsControllerTest < ActionController::TestCase
  setup do
    @diagnosis_request = diagnosis_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnosis_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosis_request" do
    assert_difference('DiagnosisRequest.count') do
      post :create, diagnosis_request: @diagnosis_request.attributes
    end

    assert_redirected_to diagnosis_request_path(assigns(:diagnosis_request))
  end

  test "should show diagnosis_request" do
    get :show, id: @diagnosis_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnosis_request.to_param
    assert_response :success
  end

  test "should update diagnosis_request" do
    put :update, id: @diagnosis_request.to_param, diagnosis_request: @diagnosis_request.attributes
    assert_redirected_to diagnosis_request_path(assigns(:diagnosis_request))
  end

  test "should destroy diagnosis_request" do
    assert_difference('DiagnosisRequest.count', -1) do
      delete :destroy, id: @diagnosis_request.to_param
    end

    assert_redirected_to diagnosis_requests_path
  end
end
