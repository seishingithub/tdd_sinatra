require 'capybara/rspec'
require_relative("../app")

Capybara.app = App

feature "managing items" do
  scenario "user manages items" do
    visit "/"
    expect(page).to have_content("Our Menu")

  end
end