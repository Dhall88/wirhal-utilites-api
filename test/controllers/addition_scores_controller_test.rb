require 'test_helper'

class AdditionScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addition_score = addition_scores(:one)
  end

  test "should get index" do
    get addition_scores_url, as: :json
    assert_response :success
  end

  test "should create addition_score" do
    assert_difference('AdditionScore.count') do
      post addition_scores_url, params: { addition_score: { score: @addition_score.score } }, as: :json
    end

    assert_response 201
  end

  test "should show addition_score" do
    get addition_score_url(@addition_score), as: :json
    assert_response :success
  end

  test "should update addition_score" do
    patch addition_score_url(@addition_score), params: { addition_score: { score: @addition_score.score } }, as: :json
    assert_response 200
  end

  test "should destroy addition_score" do
    assert_difference('AdditionScore.count', -1) do
      delete addition_score_url(@addition_score), as: :json
    end

    assert_response 204
  end
end
