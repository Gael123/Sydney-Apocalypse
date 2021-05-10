class Hospital < ApplicationRecord
  has_many :patients
  has_many :diseases
  belongs_to :waiting_list
  validates :name, presence: true
end
