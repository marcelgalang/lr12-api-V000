require 'test_helper'

class LeftBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @left_b = left_bs(:one)
  end

  test "should get index" do
    get left_bs_url, as: :json
    assert_response :success
  end

  test "should create left_b" do
    assert_difference('LeftB.count') do
      post left_bs_url, params: { left_b: { endTime: @left_b.endTime, startTime: @left_b.startTime, user: @left_b.user } }, as: :json
    end

    assert_response 201
  end

  test "should show left_b" do
    get left_b_url(@left_b), as: :json
    assert_response :success
  end

  test "should update left_b" do
    patch left_b_url(@left_b), params: { left_b: { endTime: @left_b.endTime, startTime: @left_b.startTime, user: @left_b.user } }, as: :json
    assert_response 200
  end

  test "should destroy left_b" do
    assert_difference('LeftB.count', -1) do
      delete left_b_url(@left_b), as: :json
    end

    assert_response 204
  end
end
