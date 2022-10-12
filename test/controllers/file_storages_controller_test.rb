require "test_helper"

class FileStoragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_storage = file_storages(:one)
  end

  test "should get index" do
    get file_storages_url
    assert_response :success
  end

  test "should get new" do
    get new_file_storage_url
    assert_response :success
  end

  test "should create file_storage" do
    assert_difference("FileStorage.count") do
      post file_storages_url, params: { file_storage: {  } }
    end

    assert_redirected_to file_storage_url(FileStorage.last)
  end

  test "should show file_storage" do
    get file_storage_url(@file_storage)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_storage_url(@file_storage)
    assert_response :success
  end

  test "should update file_storage" do
    patch file_storage_url(@file_storage), params: { file_storage: {  } }
    assert_redirected_to file_storage_url(@file_storage)
  end

  test "should destroy file_storage" do
    assert_difference("FileStorage.count", -1) do
      delete file_storage_url(@file_storage)
    end

    assert_redirected_to file_storages_url
  end
end
