require 'rails_helper'

RSpec.describe Car, type: :model do
  context '.not_blue' do
    let(:blue_car) { Car.create! color: 'blue' }
    let(:red_car) { Car.create! color: 'red' }

    subject do
      Car.not_blue
    end

    it 'includes cars which are not blue' do
      expect(subject).to include(red_car)
    end

    it 'excludes cars which are blue' do
      expect(subject).not_to include(blue_car)
    end
  end
end
