require "application_system_test_case"

class ImageUploadersTest < ApplicationSystemTestCase
  setup do
    @image_uploader = image_uploaders(:one)
  end

  test "visiting the index" do
    visit image_uploaders_url
    assert_selector "h1", text: "Image Uploaders"
  end

  test "creating a Image uploader" do
    visit image_uploaders_url
    click_on "New Image Uploader"

    fill_in "Avtar", with: @image_uploader.avtar
    fill_in "Email", with: @image_uploader.email
    fill_in "Name", with: @image_uploader.name
    click_on "Create Image uploader"

    assert_text "Image uploader was successfully created"
    click_on "Back"
  end

  test "updating a Image uploader" do
    visit image_uploaders_url
    click_on "Edit", match: :first

    fill_in "Avtar", with: @image_uploader.avtar
    fill_in "Email", with: @image_uploader.email
    fill_in "Name", with: @image_uploader.name
    click_on "Update Image uploader"

    assert_text "Image uploader was successfully updated"
    click_on "Back"
  end

  test "destroying a Image uploader" do
    visit image_uploaders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image uploader was successfully destroyed"
  end
end
