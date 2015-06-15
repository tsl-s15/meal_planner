require 'rails_helper'
require 'capybara/rspec'

describe 'new recipe link' do
  it 'should display a new recipe form when clicked' do
    visit(recipes_path)
    find('.btn-lg.btn-success').click

    expect(page).to have_selector('#new_recipe')
  end
end
