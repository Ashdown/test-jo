require './app'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature 'Sorry page displays correctly' do

  scenario "says hello" do
    visit '/'

    expect(page).to have_text('Sorry!')
  end

  scenario "shows search form" do
    visit '/'
    expect(page).to have_text('Search jamieoliver.com')
    expect(page).to have_css('.search-form')

  end

  scenario "lists other recipes" do
    visit '/'
    expect(page).to have_text('Why not try?')
    expect(page).to have_css('.recipe-list')
    expect(page).to have_selector('.recipe-image', count: 18);
    expect(page).to have_selector('.recipe-image', count: 18);
  end

end