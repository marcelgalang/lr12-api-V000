require 'test_helper'

class TwoDiapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @two_diaper = two_diapers(:one)
  end

  test "should get index" do
    get two_diapers_url, as: :json
    assert_response :success
  end

  test "should create two_diaper" do
    assert_difference('TwoDiaper.count') do
      post two_diapers_url, params: { two_diaper: { count: @two_diaper.count, user: @two_diaper.user } }, as: :json
    end

    assert_response 201
  end

  test "should show two_diaper" do
    get two_diaper_url(@two_diaper), as: :json
    assert_response :success
  end

  test "should update two_diaper" do
    patch two_diaper_url(@two_diaper), params: { two_diaper: { count: @two_diaper.count, user: @two_diaper.user } }, as: :json
    assert_response 200
  end

  test "should destroy two_diaper" do
    assert_difference('TwoDiaper.count', -1) do
      delete two_diaper_url(@two_diaper), as: :json
    end

    assert_response 204
  end
end
