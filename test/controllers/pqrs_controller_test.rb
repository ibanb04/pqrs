require 'test_helper'

class PqrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pqr = pqrs(:one)
  end

  test "should get index" do
    get pqrs_url
    assert_response :success
  end

  test "should get new" do
    get new_pqr_url
    assert_response :success
  end

  test "should create pqr" do
    assert_difference('Pqr.count') do
      post pqrs_url, params: { pqr: { date: @pqr.date, description: @pqr.description, email: @pqr.email, file_id: @pqr.file_id, first_name: @pqr.first_name, last_name: @pqr.last_name, response_date: @pqr.response_date, subject: @pqr.subject, title: @pqr.title } }
    end

    assert_redirected_to pqr_url(Pqr.last)
  end

  test "should show pqr" do
    get pqr_url(@pqr)
    assert_response :success
  end

  test "should get edit" do
    get edit_pqr_url(@pqr)
    assert_response :success
  end

  test "should update pqr" do
    patch pqr_url(@pqr), params: { pqr: { date: @pqr.date, description: @pqr.description, email: @pqr.email, file_id: @pqr.file_id, first_name: @pqr.first_name, last_name: @pqr.last_name, response_date: @pqr.response_date, subject: @pqr.subject, title: @pqr.title } }
    assert_redirected_to pqr_url(@pqr)
  end

  test "should destroy pqr" do
    assert_difference('Pqr.count', -1) do
      delete pqr_url(@pqr)
    end

    assert_redirected_to pqrs_url
  end
end
