class Hospital < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :patients
  has_many :diseases
  # belongs_to :waiting_list
  validates :name, presence: true
end
