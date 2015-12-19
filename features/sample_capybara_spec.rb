ENV['RACK_ENV'] = 'test'

require './app'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature 'Sorry page displays correctly' do

  scenario "says Sorry" do
    visit '/'

    expect(page).to have_text('Sorry!')
  end

end
