require "application_system_test_case"

class ShipmentsTest < ApplicationSystemTestCase
  setup do
    @shipment = shipments(:one)
  end

  test "visiting the index" do
    visit shipments_url
    assert_selector "h1", text: "Shipments"
  end

  test "creating a Shipment" do
    visit shipments_url
    click_on "New Shipment"

    fill_in "Cargo checker", with: @shipment.cargo_checker
    fill_in "Customer", with: @shipment.customer_id
    fill_in "Date", with: @shipment.date
    fill_in "Dock", with: @shipment.dock
    fill_in "Driver", with: @shipment.driver_id
    fill_in "Hour", with: @shipment.hour
    fill_in "Invoice number", with: @shipment.invoice_number
    fill_in "Shipment type", with: @shipment.shipment_type
    fill_in "Vehicle", with: @shipment.vehicle_id
    fill_in "Warehouse", with: @shipment.warehouse
    click_on "Create Shipment"

    assert_text "Shipment was successfully created"
    click_on "Back"
  end

  test "updating a Shipment" do
    visit shipments_url
    click_on "Edit", match: :first

    fill_in "Cargo checker", with: @shipment.cargo_checker
    fill_in "Customer", with: @shipment.customer_id
    fill_in "Date", with: @shipment.date
    fill_in "Dock", with: @shipment.dock
    fill_in "Driver", with: @shipment.driver_id
    fill_in "Hour", with: @shipment.hour
    fill_in "Invoice number", with: @shipment.invoice_number
    fill_in "Shipment type", with: @shipment.shipment_type
    fill_in "Vehicle", with: @shipment.vehicle_id
    fill_in "Warehouse", with: @shipment.warehouse
    click_on "Update Shipment"

    assert_text "Shipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipment" do
    visit shipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipment was successfully destroyed"
  end
end
