require 'spec_helper'

feature 'Home page' do
  scenario 'Should show welcome message' do
    visit '/'
    expect(page).to have_content("Welcome to Viagogo")
  end
end
