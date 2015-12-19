ENV['RACK_ENV'] = 'test'

require './app'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature 'Sorry page displays correctly' do

  scenario "says hello" do
    visit '/'

    expect(page).to have_text('Sorry!')
  end

end

feature 'header menu displays correctly' do

  scenario "says Jamie Oliver" do
    visit '/'

    expect(page.find('.header')).to have_text('Jamie Oliver')

  end

  scenario "lists menu items" do
    visit '/'

    expect(page.find('.header .navigation-list')).to have_text('Recipes')
    expect(page.find('.header .navigation-list')).to have_text('Family Food')
    expect(page.find('.header .navigation-list')).to have_text('Discover')
    expect(page.find('.header .navigation-list')).to have_text('More Jamie')

  end

  scenario "shows log in link" do
    visit '/'
    expect(page.find('.header')).to have_text('Log In')
  end

end
