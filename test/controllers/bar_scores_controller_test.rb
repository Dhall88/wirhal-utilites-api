require 'test_helper'

class BarScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bar_score = bar_scores(:one)
  end

  test "should get index" do
    get bar_scores_url, as: :json
    assert_response :success
  end

  test "should create bar_score" do
    assert_difference('BarScore.count') do
      post bar_scores_url, params: { bar_score: { score: @bar_score.score } }, as: :json
    end

    assert_response 201
  end

  test "should show bar_score" do
    get bar_score_url(@bar_score), as: :json
    assert_response :success
  end

  test "should update bar_score" do
    patch bar_score_url(@bar_score), params: { bar_score: { score: @bar_score.score } }, as: :json
    assert_response 200
  end

  test "should destroy bar_score" do
    assert_difference('BarScore.count', -1) do
      delete bar_score_url(@bar_score), as: :json
    end

    assert_response 204
  end
end
