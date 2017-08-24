class Car < ApplicationRecord
  scope :not_blue, -> { where('color != ?', 'blue') }
end
