require 'test_helper'

class SubtractionScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subtraction_score = subtraction_scores(:one)
  end

  test "should get index" do
    get subtraction_scores_url, as: :json
    assert_response :success
  end

  test "should create subtraction_score" do
    assert_difference('SubtractionScore.count') do
      post subtraction_scores_url, params: { subtraction_score: { score: @subtraction_score.score } }, as: :json
    end

    assert_response 201
  end

  test "should show subtraction_score" do
    get subtraction_score_url(@subtraction_score), as: :json
    assert_response :success
  end

  test "should update subtraction_score" do
    patch subtraction_score_url(@subtraction_score), params: { subtraction_score: { score: @subtraction_score.score } }, as: :json
    assert_response 200
  end

  test "should destroy subtraction_score" do
    assert_difference('SubtractionScore.count', -1) do
      delete subtraction_score_url(@subtraction_score), as: :json
    end

    assert_response 204
  end
end
