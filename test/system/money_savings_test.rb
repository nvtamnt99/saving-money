require "application_system_test_case"

class MoneySavingsTest < ApplicationSystemTestCase
  setup do
    @money_saving = money_savings(:one)
  end

  test "visiting the index" do
    visit money_savings_url
    assert_selector "h1", text: "Money savings"
  end

  test "should create money saving" do
    visit money_savings_url
    click_on "New money saving"

    fill_in "Amount", with: @money_saving.amount
    fill_in "Saving amount", with: @money_saving.saving_amount
    fill_in "Saving date", with: @money_saving.saving_date
    click_on "Create Money saving"

    assert_text "Money saving was successfully created"
    click_on "Back"
  end

  test "should update Money saving" do
    visit money_saving_url(@money_saving)
    click_on "Edit this money saving", match: :first

    fill_in "Amount", with: @money_saving.amount
    fill_in "Saving amount", with: @money_saving.saving_amount
    fill_in "Saving date", with: @money_saving.saving_date
    click_on "Update Money saving"

    assert_text "Money saving was successfully updated"
    click_on "Back"
  end

  test "should destroy Money saving" do
    visit money_saving_url(@money_saving)
    click_on "Destroy this money saving", match: :first

    assert_text "Money saving was successfully destroyed"
  end
end
