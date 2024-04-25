require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Day", with: @item.day_id
    fill_in "Hasslot", with: @item.hasslot
    check "Isdone" if @item.isdone
    fill_in "Name", with: @item.name
    fill_in "Notes", with: @item.notes
    fill_in "Slot number", with: @item.slot_number
    fill_in "Tags", with: @item.tags
    fill_in "Url", with: @item.url
    click_on "Create Item"

    assert_text "Item was successfully created"
    assert_selector "h1", text: "Items"
  end

  test "updating a Item" do
    visit item_url(@item)
    click_on "Edit", match: :first

    fill_in "Day", with: @item.day_id
    fill_in "Hasslot", with: @item.hasslot
    check "Isdone" if @item.isdone
    fill_in "Name", with: @item.name
    fill_in "Notes", with: @item.notes
    fill_in "Slot number", with: @item.slot_number
    fill_in "Tags", with: @item.tags
    fill_in "Url", with: @item.url
    click_on "Update Item"

    assert_text "Item was successfully updated"
    assert_selector "h1", text: "Items"
  end

  test "destroying a Item" do
    visit edit_item_url(@item)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Item was successfully destroyed"
  end
end
