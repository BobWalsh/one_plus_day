require "application_system_test_case"

class YitemsTest < ApplicationSystemTestCase
  setup do
    @yitem = yitems(:one)
  end

  test "visiting the index" do
    visit yitems_url
    assert_selector "h1", text: "Yitems"
  end

  test "creating a Yitem" do
    visit yitems_url
    click_on "New Yitem"

    fill_in "Day", with: @yitem.day_id
    fill_in "Name", with: @yitem.name
    fill_in "Url", with: @yitem.url
    click_on "Create Yitem"

    assert_text "Yitem was successfully created"
    assert_selector "h1", text: "Yitems"
  end

  test "updating a Yitem" do
    visit yitem_url(@yitem)
    click_on "Edit", match: :first

    fill_in "Day", with: @yitem.day_id
    fill_in "Name", with: @yitem.name
    fill_in "Url", with: @yitem.url
    click_on "Update Yitem"

    assert_text "Yitem was successfully updated"
    assert_selector "h1", text: "Yitems"
  end

  test "destroying a Yitem" do
    visit edit_yitem_url(@yitem)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Yitem was successfully destroyed"
  end
end
