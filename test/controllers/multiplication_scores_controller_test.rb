require 'test_helper'

class MultiplicationScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multiplication_score = multiplication_scores(:one)
  end

  test "should get index" do
    get multiplication_scores_url, as: :json
    assert_response :success
  end

  test "should create multiplication_score" do
    assert_difference('MultiplicationScore.count') do
      post multiplication_scores_url, params: { multiplication_score: { score: @multiplication_score.score } }, as: :json
    end

    assert_response 201
  end

  test "should show multiplication_score" do
    get multiplication_score_url(@multiplication_score), as: :json
    assert_response :success
  end

  test "should update multiplication_score" do
    patch multiplication_score_url(@multiplication_score), params: { multiplication_score: { score: @multiplication_score.score } }, as: :json
    assert_response 200
  end

  test "should destroy multiplication_score" do
    assert_difference('MultiplicationScore.count', -1) do
      delete multiplication_score_url(@multiplication_score), as: :json
    end

    assert_response 204
  end
end
