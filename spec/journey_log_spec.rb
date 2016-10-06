require 'oystercard'
require 'journey'
require 'station'
require 'journey_log'

describe Journey_log do

  subject(:journey) {described_class.new}
  (:journey).to respond_to(:store_card_history)

  let(:card)     {double :oystercard}
  let(:mudchute) {double :station}
  let(:bank)     {double :station}
  let(:journey)    {double :journey}


  it 'is capable of storing card history' do
  allow(journey).to receive(:current_journey).and_return({entry_station: mudchute, exit_station: bank})
  expect(subject.store_card_history).to include [{entry_station: mudchute, exit_station: bank}]
  end

end
