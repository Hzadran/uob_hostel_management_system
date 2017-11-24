require 'test_helper'

class PayemenetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payemenet = payemenets(:one)
  end

  test "should get index" do
    get payemenets_url
    assert_response :success
  end

  test "should get new" do
    get new_payemenet_url
    assert_response :success
  end

  test "should create payemenet" do
    assert_difference('Payemenet.count') do
      post payemenets_url, params: { payemenet: { Amount: @payemenet.Amount, Remainig_fee: @payemenet.Remainig_fee, Total_fee: @payemenet.Total_fee, chequ_id: @payemenet.chequ_id, pay_date: @payemenet.pay_date, studentat_id: @payemenet.studentat_id } }
    end

    assert_redirected_to payemenet_url(Payemenet.last)
  end

  test "should show payemenet" do
    get payemenet_url(@payemenet)
    assert_response :success
  end

  test "should get edit" do
    get edit_payemenet_url(@payemenet)
    assert_response :success
  end

  test "should update payemenet" do
    patch payemenet_url(@payemenet), params: { payemenet: { Amount: @payemenet.Amount, Remainig_fee: @payemenet.Remainig_fee, Total_fee: @payemenet.Total_fee, chequ_id: @payemenet.chequ_id, pay_date: @payemenet.pay_date, studentat_id: @payemenet.studentat_id } }
    assert_redirected_to payemenet_url(@payemenet)
  end

  test "should destroy payemenet" do
    assert_difference('Payemenet.count', -1) do
      delete payemenet_url(@payemenet)
    end

    assert_redirected_to payemenets_url
  end
end
