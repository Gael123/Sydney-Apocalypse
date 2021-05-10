class Disease < ApplicationRecord
  has_many :patients
  has_many :hospitals
  validates :name, presence: true
  validates :description, presence: true
end
