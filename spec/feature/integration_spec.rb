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

  # test for blank input on Title field
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
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K Rowling')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '16.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('16.99')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    select '2016', :from => 'book[published_date(1i)]'
    select 'June', :from => 'book[published_date(2i)]'
    select '25', :from => 'book[published_date(3i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2016-06-25')
  end

end
