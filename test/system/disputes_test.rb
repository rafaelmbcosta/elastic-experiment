require "application_system_test_case"

class DisputesTest < ApplicationSystemTestCase
  setup do
    @dispute = disputes(:one)
  end

  test "visiting the index" do
    visit disputes_url
    assert_selector "h1", text: "Disputes"
  end

  test "creating a Dispute" do
    visit disputes_url
    click_on "New Dispute"

    fill_in "Name", with: @dispute.name
    click_on "Create Dispute"

    assert_text "Dispute was successfully created"
    click_on "Back"
  end

  test "updating a Dispute" do
    visit disputes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dispute.name
    click_on "Update Dispute"

    assert_text "Dispute was successfully updated"
    click_on "Back"
  end

  test "destroying a Dispute" do
    visit disputes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dispute was successfully destroyed"
  end
end
