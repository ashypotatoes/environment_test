# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  # scenario 'invalid inputs' do
  #   visit new_book_path
  #   fill_in 'Title', with: ''
  #   click_on 'Create Book'
  #   expect(page).to have_content("Title can't be blank")
  # end

  # test for new attributes listed in step 6, bullet 2
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K Rowling'
    fill_in 'Price', with: '16.99'
    fill_in 'Published Date', with: 'Sat, 10 Nov 2007'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

end
