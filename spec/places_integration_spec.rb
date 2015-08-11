require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe ('the locations path', {:type => :feature}) do
  it ('processes the entered location and adds it to the list')do
    visit('/')
    fill_in('place',:with => 'Japan')
    click_button('Send')
    expect(page).to have_content('Japan')
  end
end
