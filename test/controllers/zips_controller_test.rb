require 'test_helper'

class ZipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zip = zips(:one)
  end

  test "should get index" do
    get zips_url, as: :json
    assert_response :success
  end

  test "should create zip" do
    assert_difference('Zip.count') do
      post zips_url, params: { zip: { zip: @zip.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show zip" do
    get zip_url(@zip), as: :json
    assert_response :success
  end

  test "should update zip" do
    patch zip_url(@zip), params: { zip: { zip: @zip.zip } }, as: :json
    assert_response 200
  end

  test "should destroy zip" do
    assert_difference('Zip.count', -1) do
      delete zip_url(@zip), as: :json
    end

    assert_response 204
  end
end
