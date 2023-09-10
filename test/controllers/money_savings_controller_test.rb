require "test_helper"

class MoneySavingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_saving = money_savings(:one)
  end

  test "should get index" do
    get money_savings_url
    assert_response :success
  end

  test "should get new" do
    get new_money_saving_url
    assert_response :success
  end

  test "should create money_saving" do
    assert_difference("MoneySaving.count") do
      post money_savings_url, params: { money_saving: { amount: @money_saving.amount, saving_amount: @money_saving.saving_amount, saving_date: @money_saving.saving_date } }
    end

    assert_redirected_to money_saving_url(MoneySaving.last)
  end

  test "should show money_saving" do
    get money_saving_url(@money_saving)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_saving_url(@money_saving)
    assert_response :success
  end

  test "should update money_saving" do
    patch money_saving_url(@money_saving), params: { money_saving: { amount: @money_saving.amount, saving_amount: @money_saving.saving_amount, saving_date: @money_saving.saving_date } }
    assert_redirected_to money_saving_url(@money_saving)
  end

  test "should destroy money_saving" do
    assert_difference("MoneySaving.count", -1) do
      delete money_saving_url(@money_saving)
    end

    assert_redirected_to money_savings_url
  end
end
