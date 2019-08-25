class Avenger < ApplicationRecord
  validates :avenger, presence: true, length: { maximum: 140, minimum: 3 }
end