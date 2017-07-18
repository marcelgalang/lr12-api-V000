require 'test_helper'

class OneDiapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one_diaper = one_diapers(:one)
  end

  test "should get index" do
    get one_diapers_url, as: :json
    assert_response :success
  end

  test "should create one_diaper" do
    assert_difference('OneDiaper.count') do
      post one_diapers_url, params: { one_diaper: { count: @one_diaper.count, user: @one_diaper.user } }, as: :json
    end

    assert_response 201
  end

  test "should show one_diaper" do
    get one_diaper_url(@one_diaper), as: :json
    assert_response :success
  end

  test "should update one_diaper" do
    patch one_diaper_url(@one_diaper), params: { one_diaper: { count: @one_diaper.count, user: @one_diaper.user } }, as: :json
    assert_response 200
  end

  test "should destroy one_diaper" do
    assert_difference('OneDiaper.count', -1) do
      delete one_diaper_url(@one_diaper), as: :json
    end

    assert_response 204
  end
end
