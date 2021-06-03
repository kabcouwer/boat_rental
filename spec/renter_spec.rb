require 'rspec'
require './lib/renter'

RSpec.describe Renter do
 describe 'instantiation' do
   it 'exists' do
     renter = Renter.new("Patrick Star", "4242424242424242")

     expect(renter).to be_a(Renter)
   end

   it 'has readable attributes' do
     renter = Renter.new("Patrick Star", "4242424242424242")

     expect(renter.name).to eq("Patrick Star")
     expect(renter.credit_card_number).to eq("4242424242424242")
   end
 end

end
