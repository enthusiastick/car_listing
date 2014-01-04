require 'spec_helper'

feature 'Salesperson records a newly acquired car' do
  # As a car salesperson
  # I want to record a newly acquired car
  # So that I can list it in my lost
  # Acceptance Criteria:
  # * I must specify the color, year, mileage of the car.
  # * Only years from 1980 and above can be specified.
  # * I can optionally specify a description of the car.
  # * If I enter all of the required information in the required format, the car is recorded.
  # * If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
  # * Upon successfully creating a car, I am redirected so that I can create another car.

  context "with valid attributes" do
    it "lists a car successfully" do
      visit '/cars/new'

      fill_in "Color", with: "red"
      select("2002", :from => "Year")
      fill_in "Mileage", with: "54000"
      fill_in "Description", with: "I think something bounced up into my undercarriage."
      click_on "List Car"

      expect(page).to have_content "successfully"
    end
  end

  context "with invalid attributes" do
    it "displays errors" do
      visit '/cars/new'

      click_on "List Car"
      expect(page).to have_content "Error"
    end
  end

end
