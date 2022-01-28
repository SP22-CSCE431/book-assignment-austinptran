# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'Harry Potter')
	end
	
	it 'Is valid with valid attributes' do
		expect(subject).to be_valid
	end
	
	it 'Is not valid without a name' do
		subject.title = nil
		expect(subject).not_to be_valid
	end
end