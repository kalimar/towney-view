require "test_helper"

class RecommendationsControllerTest < ActionController::TestCase

  def recommendation
    @recommendation ||= recommendations :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:recommendations)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Recommendation.count') do
      post :create, recommendation: { address: recommendation.address, company_name: recommendation.company_name, contact_name: recommendation.contact_name, email: recommendation.email, industry: recommendation.industry, notes: recommendation.notes, phone: recommendation.phone }
    end

    assert_redirected_to recommendation_path(assigns(:recommendation))
  end

  def test_show
    get :show, id: recommendation
    assert_response :success
  end

  def test_edit
    get :edit, id: recommendation
    assert_response :success
  end

  def test_update
    put :update, id: recommendation, recommendation: { address: recommendation.address, company_name: recommendation.company_name, contact_name: recommendation.contact_name, email: recommendation.email, industry: recommendation.industry, notes: recommendation.notes, phone: recommendation.phone }
    assert_redirected_to recommendation_path(assigns(:recommendation))
  end

  def test_destroy
    assert_difference('Recommendation.count', -1) do
      delete :destroy, id: recommendation
    end

    assert_redirected_to recommendations_path
  end
end
