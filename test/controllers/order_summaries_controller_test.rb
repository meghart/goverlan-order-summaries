require 'test_helper'

class OrderSummariesControllerTest < ActionController::TestCase
  setup do
    @order_summary = order_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_summary" do
    assert_difference('OrderSummary.count') do
      post :create, order_summary: { account_name: @order_summary.account_name, salesforce_url: @order_summary.salesforce_url }
    end

    assert_redirected_to order_summary_path(assigns(:order_summary))
  end

  test "should show order_summary" do
    get :show, id: @order_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_summary
    assert_response :success
  end

  test "should update order_summary" do
    patch :update, id: @order_summary, order_summary: { account_name: @order_summary.account_name, salesforce_url: @order_summary.salesforce_url }
    assert_redirected_to order_summary_path(assigns(:order_summary))
  end

  test "should destroy order_summary" do
    assert_difference('OrderSummary.count', -1) do
      delete :destroy, id: @order_summary
    end

    assert_redirected_to order_summaries_path
  end
end
