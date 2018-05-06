require "application_system_test_case"

class AddsTest < ApplicationSystemTestCase
  setup do
    @add = adds(:one)
  end

  test "visiting the index" do
    visit adds_url
    assert_selector "h1", text: "Adds"
  end

  test "creating a Add" do
    visit adds_url
    click_on "New Add"

    fill_in "Local Area", with: @add.local_area
    fill_in "Name", with: @add.name
    fill_in "Slug", with: @add.slug
    fill_in "Town", with: @add.town
    click_on "Create Add"

    assert_text "Add was successfully created"
    click_on "Back"
  end

  test "updating a Add" do
    visit adds_url
    click_on "Edit", match: :first

    fill_in "Local Area", with: @add.local_area
    fill_in "Name", with: @add.name
    fill_in "Slug", with: @add.slug
    fill_in "Town", with: @add.town
    click_on "Update Add"

    assert_text "Add was successfully updated"
    click_on "Back"
  end

  test "destroying a Add" do
    visit adds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add was successfully destroyed"
  end
end
