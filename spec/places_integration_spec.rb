require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('places', {:type => :feature}) do
  it('processes the user entry and returns a place they have visited') do
    visit('/')
    fill_in('place1', :with => "Thailand")
    click_button('submit')
    expect(page).to have_content('Your place has been added successfully back')
  end
end
