require 'capybara/rspec'
require_relative("../app")

Capybara.app = App

feature "managing items" do
  scenario "user manages items" do
    visit "/"
    expect(page).to have_content("Our Menu")

    click_link "Add Item"
    page.fill_in 'Item Name', :with => 'Channa'
    click_button('Add Item')
    expect(page).to have_content("Channa")
  end
end