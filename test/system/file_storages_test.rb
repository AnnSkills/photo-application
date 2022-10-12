require "application_system_test_case"

class FileStoragesTest < ApplicationSystemTestCase
  setup do
    @file_storage = file_storages(:one)
  end

  test "visiting the index" do
    visit file_storages_url
    assert_selector "h1", text: "File storages"
  end

  test "should create file storage" do
    visit file_storages_url
    click_on "New file storage"

    click_on "Create File storage"

    assert_text "File storage was successfully created"
    click_on "Back"
  end

  test "should update File storage" do
    visit file_storage_url(@file_storage)
    click_on "Edit this file storage", match: :first

    click_on "Update File storage"

    assert_text "File storage was successfully updated"
    click_on "Back"
  end

  test "should destroy File storage" do
    visit file_storage_url(@file_storage)
    click_on "Destroy this file storage", match: :first

    assert_text "File storage was successfully destroyed"
  end
end
