class WaitingList < ApplicationRecord
  belongs_to :hospital, dependent: :destroy
  has_many :patients
end
