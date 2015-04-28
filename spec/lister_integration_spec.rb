require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the todo list path', {:type => :feature}) do
  it('returns list items after item is submitted') do
    visit('/')
    fill_in('description', :with => 'mow the lawn')
    click_button('Add task')
    expect(page).to have_content("You have successfully added an item to your to do list!")
  end
end
