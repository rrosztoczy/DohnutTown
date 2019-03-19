require "application_system_test_case"

class DohnutsTest < ApplicationSystemTestCase
  setup do
    @dohnut = dohnuts(:one)
  end

  test "visiting the index" do
    visit dohnuts_url
    assert_selector "h1", text: "Dohnuts"
  end

  test "creating a Dohnut" do
    visit dohnuts_url
    click_on "New Dohnut"

    fill_in "Flavor", with: @dohnut.flavor
    fill_in "Size", with: @dohnut.size
    fill_in "Sprinkes", with: @dohnut.sprinkes
    click_on "Create Dohnut"

    assert_text "Dohnut was successfully created"
    click_on "Back"
  end

  test "updating a Dohnut" do
    visit dohnuts_url
    click_on "Edit", match: :first

    fill_in "Flavor", with: @dohnut.flavor
    fill_in "Size", with: @dohnut.size
    fill_in "Sprinkes", with: @dohnut.sprinkes
    click_on "Update Dohnut"

    assert_text "Dohnut was successfully updated"
    click_on "Back"
  end

  test "destroying a Dohnut" do
    visit dohnuts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dohnut was successfully destroyed"
  end
end
