require 'test_helper'

class ProposalsControllerTest < ActionController::TestCase
  setup do
    @proposal = proposals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal" do
    assert_difference('Proposal.count') do
      post :create, proposal: { client_email: @proposal.client_email, client_name: @proposal.client_name, company_details: @proposal.company_details, company_name: @proposal.company_name, currency: @proposal.currency, expiration_date: @proposal.expiration_date, is_paid: @proposal.is_paid, notes: @proposal.notes, num_months: @proposal.num_months, num_subscriptions: @proposal.num_subscriptions, payment_id: @proposal.payment_id, plan: @proposal.plan, proposal_code: @proposal.proposal_code, total_price: @proposal.total_price, unit_price: @proposal.unit_price, user_id: @proposal.user_id }
    end

    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should show proposal" do
    get :show, id: @proposal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal
    assert_response :success
  end

  test "should update proposal" do
    patch :update, id: @proposal, proposal: { client_email: @proposal.client_email, client_name: @proposal.client_name, company_details: @proposal.company_details, company_name: @proposal.company_name, currency: @proposal.currency, expiration_date: @proposal.expiration_date, is_paid: @proposal.is_paid, notes: @proposal.notes, num_months: @proposal.num_months, num_subscriptions: @proposal.num_subscriptions, payment_id: @proposal.payment_id, plan: @proposal.plan, proposal_code: @proposal.proposal_code, total_price: @proposal.total_price, unit_price: @proposal.unit_price, user_id: @proposal.user_id }
    assert_redirected_to proposal_path(assigns(:proposal))
  end

  test "should destroy proposal" do
    assert_difference('Proposal.count', -1) do
      delete :destroy, id: @proposal
    end

    assert_redirected_to proposals_path
  end
end
