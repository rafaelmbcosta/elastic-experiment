require 'test_helper'

class DisputesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispute = disputes(:one)
  end

  test "should get index" do
    get disputes_url
    assert_response :success
  end

  test "should get new" do
    get new_dispute_url
    assert_response :success
  end

  test "should create dispute" do
    assert_difference('Dispute.count') do
      post disputes_url, params: { dispute: { name: @dispute.name } }
    end

    assert_redirected_to dispute_url(Dispute.last)
  end

  test "should show dispute" do
    get dispute_url(@dispute)
    assert_response :success
  end

  test "should get edit" do
    get edit_dispute_url(@dispute)
    assert_response :success
  end

  test "should update dispute" do
    patch dispute_url(@dispute), params: { dispute: { name: @dispute.name } }
    assert_redirected_to dispute_url(@dispute)
  end

  test "should destroy dispute" do
    assert_difference('Dispute.count', -1) do
      delete dispute_url(@dispute)
    end

    assert_redirected_to disputes_url
  end
end
