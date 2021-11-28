require "test_helper"

class EateriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eatery = eateries(:one)
  end

  test "should get index" do
    get eateries_url, as: :json
    assert_response :success
  end

  test "should create eatery" do
    assert_difference('Eatery.count') do
      post eateries_url, params: { eatery: { name: @eatery.name } }, as: :json
    end

    assert_response 201
  end

  test "should show eatery" do
    get eatery_url(@eatery), as: :json
    assert_response :success
  end

  test "should update eatery" do
    patch eatery_url(@eatery), params: { eatery: { name: @eatery.name } }, as: :json
    assert_response 200
  end

  test "should destroy eatery" do
    assert_difference('Eatery.count', -1) do
      delete eatery_url(@eatery), as: :json
    end

    assert_response 204
  end
end
