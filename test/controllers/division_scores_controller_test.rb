require 'test_helper'

class DivisionScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @division_score = division_scores(:one)
  end

  test "should get index" do
    get division_scores_url, as: :json
    assert_response :success
  end

  test "should create division_score" do
    assert_difference('DivisionScore.count') do
      post division_scores_url, params: { division_score: { score: @division_score.score } }, as: :json
    end

    assert_response 201
  end

  test "should show division_score" do
    get division_score_url(@division_score), as: :json
    assert_response :success
  end

  test "should update division_score" do
    patch division_score_url(@division_score), params: { division_score: { score: @division_score.score } }, as: :json
    assert_response 200
  end

  test "should destroy division_score" do
    assert_difference('DivisionScore.count', -1) do
      delete division_score_url(@division_score), as: :json
    end

    assert_response 204
  end
end
