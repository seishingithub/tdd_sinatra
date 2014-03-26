require 'capybara/rspec'
require_relative("../app")

Capybara.app = App

feature "managing items" do
  scenario "user manages items" do
    visit "/"
    expect(page).to have_content("Our Menu")

    click_link "Add Item"
    page.fill_in 'Item Name', :with => 'Naan'
    click_button('Create Item')
    expect(page).to have_content("Naan")

    click_link "Details"
    expect(page).to have_content("Naan")

    click_link "edit"
    fill_in 'Item Name', :with => 'Channa Masala'
    click_on('Edit Item')
    expect(page).to have_content("Channa Masala")

    click_link "Details"
    click_on("Delete Item")
    expect(page).to_not have_content("Channa Masala")



  end
end