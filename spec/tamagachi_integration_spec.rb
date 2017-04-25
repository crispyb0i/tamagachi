require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('places', {:type => :feature}) do
  it('adds the name lil dragon') do
    visit('/')
    fill_in('name', :with => "lil dragon")
    click_button('submit')
    expect(page).to have_content('')
  end
end
