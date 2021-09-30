# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'isvalid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  # test for author
  subject do
    described_class.new(author: 'J.K Rowling')
  end

  it 'isvalid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  # test for price
  subject do
    described_class.new(price: '16.99')
  end

  it 'isvalid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  # test for published date
  subject do
    described_class.new(published_date: 'Sat, 10 Nov 2007')
  end

  it 'isvalid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end
