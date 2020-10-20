require 'test_helper'

class ImageUploadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_uploader = image_uploaders(:one)
  end

  test "should get index" do
    get image_uploaders_url
    assert_response :success
  end

  test "should get new" do
    get new_image_uploader_url
    assert_response :success
  end

  test "should create image_uploader" do
    assert_difference('ImageUploader.count') do
      post image_uploaders_url, params: { image_uploader: { avtar: @image_uploader.avtar, email: @image_uploader.email, name: @image_uploader.name } }
    end

    assert_redirected_to image_uploader_url(ImageUploader.last)
  end

  test "should show image_uploader" do
    get image_uploader_url(@image_uploader)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_uploader_url(@image_uploader)
    assert_response :success
  end

  test "should update image_uploader" do
    patch image_uploader_url(@image_uploader), params: { image_uploader: { avtar: @image_uploader.avtar, email: @image_uploader.email, name: @image_uploader.name } }
    assert_redirected_to image_uploader_url(@image_uploader)
  end

  test "should destroy image_uploader" do
    assert_difference('ImageUploader.count', -1) do
      delete image_uploader_url(@image_uploader)
    end

    assert_redirected_to image_uploaders_url
  end
end
