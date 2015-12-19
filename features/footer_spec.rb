require './app'
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

feature 'footer displays correctly' do

  scenario "shows Jamies World link" do
    visit '/'

    expect(page.find('.footer')).to have_text("Jamie's World")

  end

  scenario "shows footer menu" do
    visit '/'

    expect(page.find('.footer .footer-list')).to have_text('FAQ')
    expect(page.find('.footer .footer-list')).to have_text('Privacy Policy')
    expect(page.find('.footer .footer-list')).to have_text('Terms of Service')
    expect(page.find('.footer .footer-list')).to have_text('Advertise with us')
    expect(page.find('.footer .footer-list')).to have_text('Jamie Oliver Ltd')
  end

end
